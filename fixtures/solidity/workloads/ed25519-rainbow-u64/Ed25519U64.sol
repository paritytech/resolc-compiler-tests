pragma solidity ^0.8.20;

contract Ed25519U64 {
    struct Point {
        int64[10] x;
        int64[10] y;
        int64[10] z;
        int64[10] t;
    }

    struct PointScratch {
        int64[10] a;
        int64[10] b;
        int64[10] c;
        int64[10] d;
        int64[10] e;
        int64[10] f;
        int64[10] g;
        int64[10] h;
        int64[10] tmp;
        int64[10] d2;
        int64[10] product;
    }

    function check(
        bytes32 k,
        bytes32 r,
        bytes32 s,
        bytes32 m1,
        bytes9 m2
    ) public pure returns (bool) {
        unchecked {
            uint64[32] memory publicKey = bytes32ToOctets(k);
            uint64[32] memory encodedR = bytes32ToOctets(r);
            uint64[32] memory scalarS = bytes32ToOctets(s);
            if (!scalarIsCanonical(scalarS)) {
                return false;
            }

            PointScratch memory scratch;
            scratch.d2 = fieldD2();
            Point memory minusA;
            if (!unpackNegative(minusA, publicKey, scratch.product)) {
                return false;
            }

            uint64[8] memory digest = sha512(k, r, m1, m2);
            uint64[32] memory h = reduceScalar(digest);

            Point memory result;
            pointIdentity(result);
            Point memory base = basePoint(scratch.product);

            // Simultaneously compute [S]B - [H(R,A,M)]A. This is the same
            // verification equation evaluated by the Rainbow implementation.
            for (uint64 n = 256; n != 128; --n) {
                uint64 bit = n - 1;
                pointStep(result, base, minusA, scratch, scalarS, h, bit);
            }
            for (uint64 n = 128; n != 0; --n) {
                uint64 bit = n - 1;
                pointStep(result, base, minusA, scratch, scalarS, h, bit);
            }

            uint64[32] memory actualR;
            packPoint(actualR, result, scratch.product);
            return octetsEqual(actualR, encodedR);
        }
    }

    // ---------------------------------------------------------------------
    // Ed25519 point arithmetic over ten alternating 26/25-bit int64 limbs.
    // ---------------------------------------------------------------------

    function pointIdentity(Point memory p) private pure {
        p.y[0] = 1;
        p.z[0] = 1;
    }

    function basePoint(
        int64[10] memory product
    ) private pure returns (Point memory p) {
        // Canonically equivalent to the usual Ed25519 base point. Centered
        // limbs keep every product and accumulation inside signed 64 bits.
        p.x = [
            int64(-14297830),
            int64(-7645148),
            int64(16144683),
            int64(-16471763),
            int64(27570974),
            int64(-2696100),
            int64(-26142465),
            int64(8378389),
            int64(20764389),
            int64(8758491)
        ];
        p.y = [
            int64(-26843541),
            int64(-6710886),
            int64(13421773),
            int64(-13421773),
            int64(26843546),
            int64(6710886),
            int64(-13421773),
            int64(13421773),
            int64(-26843546),
            int64(-6710886)
        ];
        p.z[0] = 1;
        fieldMul(p.t, p.x, p.y, product);
    }

    function pointAdd(
        Point memory p,
        Point memory q,
        PointScratch memory s
    ) private pure {
        fieldSub(s.a, p.y, p.x);
        fieldSub(s.tmp, q.y, q.x);
        fieldMul(s.a, s.a, s.tmp, s.product);
        fieldAdd(s.b, p.x, p.y);
        fieldAdd(s.tmp, q.x, q.y);
        fieldMul(s.b, s.b, s.tmp, s.product);
        fieldMul(s.c, p.t, q.t, s.product);
        fieldMul(s.c, s.c, s.d2, s.product);
        fieldMul(s.d, p.z, q.z, s.product);
        fieldAdd(s.d, s.d, s.d);
        fieldSub(s.e, s.b, s.a);
        fieldSub(s.f, s.d, s.c);
        fieldAdd(s.g, s.d, s.c);
        fieldAdd(s.h, s.b, s.a);
        fieldMul(p.x, s.e, s.f, s.product);
        fieldMul(p.y, s.g, s.h, s.product);
        fieldMul(p.t, s.e, s.h, s.product);
        fieldMul(p.z, s.f, s.g, s.product);
    }

    function pointDouble(Point memory p, PointScratch memory s) private pure {
        fieldSquare(s.a, p.x, s.product);
        fieldSquare(s.b, p.y, s.product);
        fieldSquare(s.c, p.z, s.product);
        fieldAdd(s.c, s.c, s.c);
        fieldNeg(s.d, s.a);
        fieldAdd(s.tmp, p.x, p.y);
        fieldSquare(s.e, s.tmp, s.product);
        fieldSub(s.e, s.e, s.a);
        fieldSub(s.e, s.e, s.b);
        fieldAdd(s.g, s.d, s.b);
        fieldSub(s.f, s.g, s.c);
        fieldSub(s.h, s.d, s.b);
        fieldMul(p.x, s.e, s.f, s.product);
        fieldMul(p.y, s.g, s.h, s.product);
        fieldMul(p.t, s.e, s.h, s.product);
        fieldMul(p.z, s.f, s.g, s.product);
    }

    function pointStep(
        Point memory result,
        Point memory base,
        Point memory minusA,
        PointScratch memory scratch,
        uint64[32] memory scalarS,
        uint64[32] memory h,
        uint64 bit
    ) private pure {
        pointDouble(result, scratch);
        if (((scalarS[bit >> 3] >> (bit & 7)) & 1) != 0) {
            pointAdd(result, base, scratch);
        }
        if (((h[bit >> 3] >> (bit & 7)) & 1) != 0) {
            pointAdd(result, minusA, scratch);
        }
    }

    function packPoint(
        uint64[32] memory out,
        Point memory p,
        int64[10] memory product
    ) private pure {
        int64[10] memory zi;
        int64[10] memory x;
        int64[10] memory y;
        fieldInvert(zi, p.z, product);
        fieldMul(x, p.x, zi, product);
        fieldMul(y, p.y, zi, product);
        fieldToOctets(out, y);
        out[31] ^= fieldParity(x) << 7;
    }

    function unpackNegative(
        Point memory p,
        uint64[32] memory encoded,
        int64[10] memory product
    ) private pure returns (bool) {
        int64[10] memory num;
        int64[10] memory den;
        int64[10] memory den2;
        int64[10] memory den4;
        int64[10] memory den6;
        int64[10] memory candidate;
        int64[10] memory checkValue;

        p.z[0] = 1;
        fieldFromOctets(p.y, encoded);
        fieldSquare(num, p.y, product);
        int64[10] memory d = fieldD();
        fieldMul(den, num, d, product);
        fieldSub(num, num, p.z);
        fieldAdd(den, p.z, den);

        fieldSquare(den2, den, product);
        fieldSquare(den4, den2, product);
        fieldMul(den6, den4, den2, product);
        fieldMul(candidate, den6, num, product);
        fieldMul(candidate, candidate, den, product);
        fieldPow22523(candidate, candidate, product);
        fieldMul(candidate, candidate, num, product);
        fieldMul(candidate, candidate, den, product);
        fieldMul(candidate, candidate, den, product);
        fieldMul(p.x, candidate, den, product);

        fieldSquare(checkValue, p.x, product);
        fieldMul(checkValue, checkValue, den, product);
        if (!fieldEqual(checkValue, num)) {
            int64[10] memory sqrtM1 = fieldSqrtM1();
            fieldMul(p.x, p.x, sqrtM1, product);
        }

        fieldSquare(checkValue, p.x, product);
        fieldMul(checkValue, checkValue, den, product);
        if (!fieldEqual(checkValue, num)) {
            return false;
        }

        if (fieldParity(p.x) == (encoded[31] >> 7)) {
            fieldNeg(p.x, p.x);
        }
        fieldMul(p.t, p.x, p.y, product);
        return true;
    }

    // ---------------------------------------------------------------------
    // Field operations. Products use only int64 multiplication. The radix
    // identity 2^255 == 19 and the odd-limb half bit account for factors 19
    // and 2 in the folded schoolbook product.
    // ---------------------------------------------------------------------

    function fieldAdd(
        int64[10] memory out,
        int64[10] memory a,
        int64[10] memory b
    ) private pure {
        unchecked {
            out[0] = a[0] + b[0];
            out[1] = a[1] + b[1];
            out[2] = a[2] + b[2];
            out[3] = a[3] + b[3];
            out[4] = a[4] + b[4];
            out[5] = a[5] + b[5];
            out[6] = a[6] + b[6];
            out[7] = a[7] + b[7];
            out[8] = a[8] + b[8];
            out[9] = a[9] + b[9];
        }
    }

    function fieldSub(
        int64[10] memory out,
        int64[10] memory a,
        int64[10] memory b
    ) private pure {
        unchecked {
            out[0] = a[0] - b[0];
            out[1] = a[1] - b[1];
            out[2] = a[2] - b[2];
            out[3] = a[3] - b[3];
            out[4] = a[4] - b[4];
            out[5] = a[5] - b[5];
            out[6] = a[6] - b[6];
            out[7] = a[7] - b[7];
            out[8] = a[8] - b[8];
            out[9] = a[9] - b[9];
        }
    }

    function fieldNeg(int64[10] memory out, int64[10] memory a) private pure {
        unchecked {
            out[0] = -a[0];
            out[1] = -a[1];
            out[2] = -a[2];
            out[3] = -a[3];
            out[4] = -a[4];
            out[5] = -a[5];
            out[6] = -a[6];
            out[7] = -a[7];
            out[8] = -a[8];
            out[9] = -a[9];
        }
    }

    function fieldSquare(
        int64[10] memory out,
        int64[10] memory a,
        int64[10] memory product
    ) private pure {
        unchecked {
            fieldMulLimb0(product, a, a);
            fieldMulLimb1(product, a, a);
            fieldMulLimb2(product, a, a);
            fieldMulLimb3(product, a, a);
            fieldMulLimb4(product, a, a);
            fieldMulLimb5(product, a, a);
            fieldMulLimb6(product, a, a);
            fieldMulLimb7(product, a, a);
            fieldMulLimb8(product, a, a);
            fieldMulLimb9(product, a, a);
            fieldNormalizeProduct(product);
            out[0] = product[0];
            out[1] = product[1];
            out[2] = product[2];
            out[3] = product[3];
            out[4] = product[4];
            out[5] = product[5];
            out[6] = product[6];
            out[7] = product[7];
            out[8] = product[8];
            out[9] = product[9];
        }
    }

    function fieldMul(
        int64[10] memory out,
        int64[10] memory a,
        int64[10] memory b,
        int64[10] memory product
    ) private pure {
        unchecked {
            fieldMulLimb0(product, a, b);
            fieldMulLimb1(product, a, b);
            fieldMulLimb2(product, a, b);
            fieldMulLimb3(product, a, b);
            fieldMulLimb4(product, a, b);
            fieldMulLimb5(product, a, b);
            fieldMulLimb6(product, a, b);
            fieldMulLimb7(product, a, b);
            fieldMulLimb8(product, a, b);
            fieldMulLimb9(product, a, b);
            fieldNormalizeProduct(product);
            out[0] = product[0];
            out[1] = product[1];
            out[2] = product[2];
            out[3] = product[3];
            out[4] = product[4];
            out[5] = product[5];
            out[6] = product[6];
            out[7] = product[7];
            out[8] = product[8];
            out[9] = product[9];
        }
    }

    function fieldMulLimb0(
        int64[10] memory product,
        int64[10] memory a,
        int64[10] memory b
    ) private pure {
        unchecked {
            product[0] =
                a[0] *
                b[0] +
                a[1] *
                b[9] *
                38 +
                a[2] *
                b[8] *
                19 +
                a[3] *
                b[7] *
                38 +
                a[4] *
                b[6] *
                19 +
                a[5] *
                b[5] *
                38 +
                a[6] *
                b[4] *
                19 +
                a[7] *
                b[3] *
                38 +
                a[8] *
                b[2] *
                19 +
                a[9] *
                b[1] *
                38;
        }
    }

    function fieldMulLimb1(
        int64[10] memory product,
        int64[10] memory a,
        int64[10] memory b
    ) private pure {
        unchecked {
            product[1] =
                a[0] *
                b[1] +
                a[1] *
                b[0] +
                a[2] *
                b[9] *
                19 +
                a[3] *
                b[8] *
                19 +
                a[4] *
                b[7] *
                19 +
                a[5] *
                b[6] *
                19 +
                a[6] *
                b[5] *
                19 +
                a[7] *
                b[4] *
                19 +
                a[8] *
                b[3] *
                19 +
                a[9] *
                b[2] *
                19;
        }
    }

    function fieldMulLimb2(
        int64[10] memory product,
        int64[10] memory a,
        int64[10] memory b
    ) private pure {
        unchecked {
            product[2] =
                a[0] *
                b[2] +
                a[1] *
                b[1] *
                2 +
                a[2] *
                b[0] +
                a[3] *
                b[9] *
                38 +
                a[4] *
                b[8] *
                19 +
                a[5] *
                b[7] *
                38 +
                a[6] *
                b[6] *
                19 +
                a[7] *
                b[5] *
                38 +
                a[8] *
                b[4] *
                19 +
                a[9] *
                b[3] *
                38;
        }
    }

    function fieldMulLimb3(
        int64[10] memory product,
        int64[10] memory a,
        int64[10] memory b
    ) private pure {
        unchecked {
            product[3] =
                a[0] *
                b[3] +
                a[1] *
                b[2] +
                a[2] *
                b[1] +
                a[3] *
                b[0] +
                a[4] *
                b[9] *
                19 +
                a[5] *
                b[8] *
                19 +
                a[6] *
                b[7] *
                19 +
                a[7] *
                b[6] *
                19 +
                a[8] *
                b[5] *
                19 +
                a[9] *
                b[4] *
                19;
        }
    }

    function fieldMulLimb4(
        int64[10] memory product,
        int64[10] memory a,
        int64[10] memory b
    ) private pure {
        unchecked {
            product[4] =
                a[0] *
                b[4] +
                a[1] *
                b[3] *
                2 +
                a[2] *
                b[2] +
                a[3] *
                b[1] *
                2 +
                a[4] *
                b[0] +
                a[5] *
                b[9] *
                38 +
                a[6] *
                b[8] *
                19 +
                a[7] *
                b[7] *
                38 +
                a[8] *
                b[6] *
                19 +
                a[9] *
                b[5] *
                38;
        }
    }

    function fieldMulLimb5(
        int64[10] memory product,
        int64[10] memory a,
        int64[10] memory b
    ) private pure {
        unchecked {
            product[5] =
                a[0] *
                b[5] +
                a[1] *
                b[4] +
                a[2] *
                b[3] +
                a[3] *
                b[2] +
                a[4] *
                b[1] +
                a[5] *
                b[0] +
                a[6] *
                b[9] *
                19 +
                a[7] *
                b[8] *
                19 +
                a[8] *
                b[7] *
                19 +
                a[9] *
                b[6] *
                19;
        }
    }

    function fieldMulLimb6(
        int64[10] memory product,
        int64[10] memory a,
        int64[10] memory b
    ) private pure {
        unchecked {
            product[6] =
                a[0] *
                b[6] +
                a[1] *
                b[5] *
                2 +
                a[2] *
                b[4] +
                a[3] *
                b[3] *
                2 +
                a[4] *
                b[2] +
                a[5] *
                b[1] *
                2 +
                a[6] *
                b[0] +
                a[7] *
                b[9] *
                38 +
                a[8] *
                b[8] *
                19 +
                a[9] *
                b[7] *
                38;
        }
    }

    function fieldMulLimb7(
        int64[10] memory product,
        int64[10] memory a,
        int64[10] memory b
    ) private pure {
        unchecked {
            product[7] =
                a[0] *
                b[7] +
                a[1] *
                b[6] +
                a[2] *
                b[5] +
                a[3] *
                b[4] +
                a[4] *
                b[3] +
                a[5] *
                b[2] +
                a[6] *
                b[1] +
                a[7] *
                b[0] +
                a[8] *
                b[9] *
                19 +
                a[9] *
                b[8] *
                19;
        }
    }

    function fieldMulLimb8(
        int64[10] memory product,
        int64[10] memory a,
        int64[10] memory b
    ) private pure {
        unchecked {
            product[8] =
                a[0] *
                b[8] +
                a[1] *
                b[7] *
                2 +
                a[2] *
                b[6] +
                a[3] *
                b[5] *
                2 +
                a[4] *
                b[4] +
                a[5] *
                b[3] *
                2 +
                a[6] *
                b[2] +
                a[7] *
                b[1] *
                2 +
                a[8] *
                b[0] +
                a[9] *
                b[9] *
                38;
        }
    }

    function fieldMulLimb9(
        int64[10] memory product,
        int64[10] memory a,
        int64[10] memory b
    ) private pure {
        unchecked {
            product[9] =
                a[0] *
                b[9] +
                a[1] *
                b[8] +
                a[2] *
                b[7] +
                a[3] *
                b[6] +
                a[4] *
                b[5] +
                a[5] *
                b[4] +
                a[6] *
                b[3] +
                a[7] *
                b[2] +
                a[8] *
                b[1] +
                a[9] *
                b[0];
        }
    }

    function fieldNormalizeProduct(int64[10] memory h) private pure {
        unchecked {
            int64 carry = (h[0] + (int64(1) << 25)) >> 26;
            h[1] += carry;
            h[0] -= carry << 26;
            carry = (h[1] + (int64(1) << 24)) >> 25;
            h[2] += carry;
            h[1] -= carry << 25;
            carry = (h[2] + (int64(1) << 25)) >> 26;
            h[3] += carry;
            h[2] -= carry << 26;
            carry = (h[3] + (int64(1) << 24)) >> 25;
            h[4] += carry;
            h[3] -= carry << 25;
            carry = (h[4] + (int64(1) << 25)) >> 26;
            h[5] += carry;
            h[4] -= carry << 26;
            carry = (h[5] + (int64(1) << 24)) >> 25;
            h[6] += carry;
            h[5] -= carry << 25;
            carry = (h[6] + (int64(1) << 25)) >> 26;
            h[7] += carry;
            h[6] -= carry << 26;
            carry = (h[7] + (int64(1) << 24)) >> 25;
            h[8] += carry;
            h[7] -= carry << 25;
            carry = (h[8] + (int64(1) << 25)) >> 26;
            h[9] += carry;
            h[8] -= carry << 26;
            carry = (h[9] + (int64(1) << 24)) >> 25;
            h[0] += carry * 19;
            h[9] -= carry << 25;
            carry = (h[0] + (int64(1) << 25)) >> 26;
            h[1] += carry;
            h[0] -= carry << 26;
        }
    }

    function fieldInvert(
        int64[10] memory out,
        int64[10] memory z,
        int64[10] memory product
    ) private pure {
        int64[10] memory t0;
        int64[10] memory t1;
        int64[10] memory t2;
        int64[10] memory t3;
        fieldSquare(t0, z, product);
        fieldSquare(t1, t0, product);
        fieldSquare(t1, t1, product);
        fieldMul(t1, z, t1, product);
        fieldMul(t0, t0, t1, product);
        fieldSquare(t2, t0, product);
        fieldMul(t1, t1, t2, product);
        fieldSquareN(t2, t1, 5, product);
        fieldMul(t1, t2, t1, product);
        fieldSquareN(t2, t1, 10, product);
        fieldMul(t2, t2, t1, product);
        fieldSquareN(t3, t2, 20, product);
        fieldMul(t2, t3, t2, product);
        fieldSquareN(t2, t2, 10, product);
        fieldMul(t1, t2, t1, product);
        fieldSquareN(t2, t1, 50, product);
        fieldMul(t2, t2, t1, product);
        fieldSquareN(t3, t2, 100, product);
        fieldMul(t2, t3, t2, product);
        fieldSquareN(t2, t2, 50, product);
        fieldMul(t1, t2, t1, product);
        fieldSquareN(t1, t1, 5, product);
        fieldMul(out, t1, t0, product);
    }

    function fieldPow22523(
        int64[10] memory out,
        int64[10] memory z,
        int64[10] memory product
    ) private pure {
        int64[10] memory t0;
        int64[10] memory t1;
        int64[10] memory t2;
        fieldSquare(t0, z, product);
        fieldSquare(t1, t0, product);
        fieldSquare(t1, t1, product);
        fieldMul(t1, z, t1, product);
        fieldMul(t0, t0, t1, product);
        fieldSquare(t0, t0, product);
        fieldMul(t0, t1, t0, product);
        fieldSquareN(t1, t0, 5, product);
        fieldMul(t0, t1, t0, product);
        fieldSquareN(t1, t0, 10, product);
        fieldMul(t1, t1, t0, product);
        fieldSquareN(t2, t1, 20, product);
        fieldMul(t1, t2, t1, product);
        fieldSquareN(t1, t1, 10, product);
        fieldMul(t0, t1, t0, product);
        fieldSquareN(t1, t0, 50, product);
        fieldMul(t1, t1, t0, product);
        fieldSquareN(t2, t1, 100, product);
        fieldMul(t1, t2, t1, product);
        fieldSquareN(t1, t1, 50, product);
        fieldMul(t0, t1, t0, product);
        fieldSquare(t0, t0, product);
        fieldSquare(t0, t0, product);
        fieldMul(out, t0, z, product);
    }

    function fieldSquareN(
        int64[10] memory value,
        int64[10] memory input,
        uint64 count,
        int64[10] memory product
    ) private pure {
        fieldSquare(value, input, product);
        for (uint64 i = 1; i < count; ++i) fieldSquare(value, value, product);
    }

    function fieldReduce(
        int64[10] memory out,
        int64[10] memory input
    ) private pure {
        unchecked {
            int64[10] memory h;
            for (uint64 i = 0; i < 10; ++i) h[i] = input[i];

            int64 q = (19 * h[9] + (int64(1) << 24)) >> 25;
            for (uint64 i = 0; i < 10; ++i) {
                uint64 width = (i & 1) == 0 ? 26 : 25;
                q = (h[i] + q) >> width;
            }
            h[0] += 19 * q;

            for (uint64 i = 0; i < 9; ++i) {
                uint64 width = (i & 1) == 0 ? 26 : 25;
                int64 carry = h[i] >> width;
                h[i + 1] += carry;
                h[i] -= carry << width;
            }
            int64 carry9 = h[9] >> 25;
            h[9] -= carry9 << 25;
            for (uint64 i = 0; i < 10; ++i) out[i] = h[i];
        }
    }

    function fieldFromOctets(
        int64[10] memory out,
        uint64[32] memory encoded
    ) private pure {
        unchecked {
            uint64 accumulator;
            uint64 available;
            uint64 cursor;
            for (uint64 limb = 0; limb < 10; ++limb) {
                uint64 width = (limb & 1) == 0 ? 26 : 25;
                while (available < width) {
                    accumulator |= encoded[cursor] << available;
                    ++cursor;
                    available += 8;
                }
                out[limb] = int64(accumulator & ((uint64(1) << width) - 1));
                accumulator >>= width;
                available -= width;
            }
        }
    }

    function fieldToOctets(
        uint64[32] memory out,
        int64[10] memory input
    ) private pure {
        unchecked {
            int64[10] memory h;
            fieldReduce(h, input);
            uint64 accumulator;
            uint64 available;
            uint64 cursor;
            for (uint64 limb = 0; limb < 10; ++limb) {
                uint64 width = (limb & 1) == 0 ? 26 : 25;
                accumulator |= uint64(h[limb]) << available;
                available += width;
                while (available >= 8) {
                    out[cursor] = accumulator & 255;
                    ++cursor;
                    accumulator >>= 8;
                    available -= 8;
                }
            }
            if (cursor < 32) out[cursor] = accumulator;
        }
    }

    function fieldEqual(
        int64[10] memory a,
        int64[10] memory b
    ) private pure returns (bool) {
        uint64[32] memory aa;
        uint64[32] memory bb;
        fieldToOctets(aa, a);
        fieldToOctets(bb, b);
        return octetsEqual(aa, bb);
    }

    function fieldParity(int64[10] memory a) private pure returns (uint64) {
        uint64[32] memory packed;
        fieldToOctets(packed, a);
        return packed[0] & 1;
    }

    function fieldD() private pure returns (int64[10] memory value) {
        value = [
            int64(-10913610),
            int64(13857413),
            int64(-15372611),
            int64(6949391),
            int64(114729),
            int64(-8787816),
            int64(-6275908),
            int64(-3247719),
            int64(-18696448),
            int64(-12055116)
        ];
    }

    function fieldD2() private pure returns (int64[10] memory value) {
        value = [
            int64(-21827239),
            int64(-5839606),
            int64(-30745221),
            int64(13898782),
            int64(229458),
            int64(15978800),
            int64(-12551817),
            int64(-6495438),
            int64(29715968),
            int64(9444199)
        ];
    }

    function fieldSqrtM1() private pure returns (int64[10] memory value) {
        value = [
            int64(-32595792),
            int64(-7943725),
            int64(9377950),
            int64(3500415),
            int64(12389472),
            int64(-272473),
            int64(-25146209),
            int64(-2005654),
            int64(326686),
            int64(11406482)
        ];
    }

    // ---------------------------------------------------------------------
    // SHA-512 for the fixed 105-byte R || A || message benchmark input.
    // ---------------------------------------------------------------------

    function sha512(
        bytes32 k,
        bytes32 r,
        bytes32 m1,
        bytes9 m2
    ) private pure returns (uint64[8] memory state) {
        unchecked {
            uint64[80] memory constants = sha512Constants();
            uint64[80] memory w;
            for (uint64 chunk = 0; chunk < 4; ++chunk) {
                uint64 offset = chunk << 3;
                w[chunk] = load64(r, offset);
                w[chunk + 4] = load64(k, offset);
                w[chunk + 8] = load64(m1, offset);
            }
            w[12] = load64(bytes32(m2), 0);
            w[13] = (uint64(uint8(m2[8])) << 56) | (uint64(0x80) << 48);
            w[15] = 840;

            for (uint64 i = 16; i < 80; ++i) {
                uint64 s0 = rotateRight(w[i - 15], 1) ^
                    rotateRight(w[i - 15], 8) ^
                    (w[i - 15] >> 7);
                uint64 s1 = rotateRight(w[i - 2], 19) ^
                    rotateRight(w[i - 2], 61) ^
                    (w[i - 2] >> 6);
                w[i] = w[i - 16] + s0 + w[i - 7] + s1;
            }

            state = [
                uint64(0x6a09e667f3bcc908),
                uint64(0xbb67ae8584caa73b),
                uint64(0x3c6ef372fe94f82b),
                uint64(0xa54ff53a5f1d36f1),
                uint64(0x510e527fade682d1),
                uint64(0x9b05688c2b3e6c1f),
                uint64(0x1f83d9abfb41bd6b),
                uint64(0x5be0cd19137e2179)
            ];

            // Two call sites keep the round as a real function in optimized
            // PVM code, which bounds each basic block below the upload limit.
            for (uint64 i = 0; i < 40; ++i) sha512Round(state, constants, w, i);
            for (uint64 i = 40; i < 80; ++i)
                sha512Round(state, constants, w, i);
            // A memory-array assignment aliases in Solidity, so add the IV
            // explicitly rather than attempting to retain it in another array.
            state[0] += 0x6a09e667f3bcc908;
            state[1] += 0xbb67ae8584caa73b;
            state[2] += 0x3c6ef372fe94f82b;
            state[3] += 0xa54ff53a5f1d36f1;
            state[4] += 0x510e527fade682d1;
            state[5] += 0x9b05688c2b3e6c1f;
            state[6] += 0x1f83d9abfb41bd6b;
            state[7] += 0x5be0cd19137e2179;
        }
    }

    function sha512Round(
        uint64[8] memory state,
        uint64[80] memory constants,
        uint64[80] memory w,
        uint64 i
    ) private pure {
        unchecked {
            uint64 bigS1 = rotateRight(state[4], 14) ^
                rotateRight(state[4], 18) ^
                rotateRight(state[4], 41);
            uint64 choose = (state[4] & state[5]) ^ (~state[4] & state[6]);
            uint64 temp1 = state[7] + bigS1 + choose + constants[i] + w[i];
            uint64 bigS0 = rotateRight(state[0], 28) ^
                rotateRight(state[0], 34) ^
                rotateRight(state[0], 39);
            uint64 majority = (state[0] & state[1]) ^
                (state[0] & state[2]) ^
                (state[1] & state[2]);
            uint64 temp2 = bigS0 + majority;
            state[7] = state[6];
            state[6] = state[5];
            state[5] = state[4];
            state[4] = state[3] + temp1;
            state[3] = state[2];
            state[2] = state[1];
            state[1] = state[0];
            state[0] = temp1 + temp2;
        }
    }

    function rotateRight(
        uint64 value,
        uint64 count
    ) private pure returns (uint64) {
        return (value >> count) | (value << (64 - count));
    }

    function load64(
        bytes32 value,
        uint64 offset
    ) private pure returns (uint64 result) {
        unchecked {
            for (uint64 i = 0; i < 8; ++i)
                result = (result << 8) | uint64(uint8(value[offset + i]));
        }
    }

    function sha512Constants() private pure returns (uint64[80] memory values) {
        values = [
            uint64(0x428a2f98d728ae22),
            uint64(0x7137449123ef65cd),
            uint64(0xb5c0fbcfec4d3b2f),
            uint64(0xe9b5dba58189dbbc),
            uint64(0x3956c25bf348b538),
            uint64(0x59f111f1b605d019),
            uint64(0x923f82a4af194f9b),
            uint64(0xab1c5ed5da6d8118),
            uint64(0xd807aa98a3030242),
            uint64(0x12835b0145706fbe),
            uint64(0x243185be4ee4b28c),
            uint64(0x550c7dc3d5ffb4e2),
            uint64(0x72be5d74f27b896f),
            uint64(0x80deb1fe3b1696b1),
            uint64(0x9bdc06a725c71235),
            uint64(0xc19bf174cf692694),
            uint64(0xe49b69c19ef14ad2),
            uint64(0xefbe4786384f25e3),
            uint64(0x0fc19dc68b8cd5b5),
            uint64(0x240ca1cc77ac9c65),
            uint64(0x2de92c6f592b0275),
            uint64(0x4a7484aa6ea6e483),
            uint64(0x5cb0a9dcbd41fbd4),
            uint64(0x76f988da831153b5),
            uint64(0x983e5152ee66dfab),
            uint64(0xa831c66d2db43210),
            uint64(0xb00327c898fb213f),
            uint64(0xbf597fc7beef0ee4),
            uint64(0xc6e00bf33da88fc2),
            uint64(0xd5a79147930aa725),
            uint64(0x06ca6351e003826f),
            uint64(0x142929670a0e6e70),
            uint64(0x27b70a8546d22ffc),
            uint64(0x2e1b21385c26c926),
            uint64(0x4d2c6dfc5ac42aed),
            uint64(0x53380d139d95b3df),
            uint64(0x650a73548baf63de),
            uint64(0x766a0abb3c77b2a8),
            uint64(0x81c2c92e47edaee6),
            uint64(0x92722c851482353b),
            uint64(0xa2bfe8a14cf10364),
            uint64(0xa81a664bbc423001),
            uint64(0xc24b8b70d0f89791),
            uint64(0xc76c51a30654be30),
            uint64(0xd192e819d6ef5218),
            uint64(0xd69906245565a910),
            uint64(0xf40e35855771202a),
            uint64(0x106aa07032bbd1b8),
            uint64(0x19a4c116b8d2d0c8),
            uint64(0x1e376c085141ab53),
            uint64(0x2748774cdf8eeb99),
            uint64(0x34b0bcb5e19b48a8),
            uint64(0x391c0cb3c5c95a63),
            uint64(0x4ed8aa4ae3418acb),
            uint64(0x5b9cca4f7763e373),
            uint64(0x682e6ff3d6b2b8a3),
            uint64(0x748f82ee5defb2fc),
            uint64(0x78a5636f43172f60),
            uint64(0x84c87814a1f0ab72),
            uint64(0x8cc702081a6439ec),
            uint64(0x90befffa23631e28),
            uint64(0xa4506cebde82bde9),
            uint64(0xbef9a3f7b2c67915),
            uint64(0xc67178f2e372532b),
            uint64(0xca273eceea26619c),
            uint64(0xd186b8c721c0c207),
            uint64(0xeada7dd6cde0eb1e),
            uint64(0xf57d4f7fee6ed178),
            uint64(0x06f067aa72176fba),
            uint64(0x0a637dc5a2c898a6),
            uint64(0x113f9804bef90dae),
            uint64(0x1b710b35131c471b),
            uint64(0x28db77f523047d84),
            uint64(0x32caab7b40c72493),
            uint64(0x3c9ebe0a15c9bebc),
            uint64(0x431d67c49c100d4c),
            uint64(0x4cc5d4becb3e42b6),
            uint64(0x597f299cfc657e2a),
            uint64(0x5fcb6fab3ad6faec),
            uint64(0x6c44198c4a475817)
        ];
    }

    // ---------------------------------------------------------------------
    // Reduction modulo the Ed25519 subgroup order, also using int64 limbs.
    // ---------------------------------------------------------------------

    function reduceScalar(
        uint64[8] memory digest
    ) private pure returns (uint64[32] memory reduced) {
        unchecked {
            int64[65] memory x;
            for (uint64 i = 0; i < 64; ++i) {
                uint64 shift = 56 - ((i & 7) << 3);
                x[i] = int64((digest[i >> 3] >> shift) & 255);
            }
            int64[32] memory order = scalarOrderSigned();
            for (uint64 n = 64; n > 32; --n) {
                uint64 i = n - 1;
                int64 carry;
                uint64 start = i - 32;
                uint64 end = i - 12;
                uint64 j = start;
                for (; j < end; ++j) {
                    int64 value = x[j] + carry - 16 * x[i] * order[j - start];
                    // Equivalent signed floor division, deliberately split
                    // into two PVM blocks to cap the expanded i64 operation
                    // sequence below the per-basic-block upload limit.
                    if (value >= -128) {
                        carry = (value + 128) >> 8;
                    } else {
                        carry = -((127 - value) >> 8);
                    }
                    x[j] = value - (carry << 8);
                }
                x[j] += carry;
                x[i] = 0;
            }

            int64 finalCarry;
            int64 top = x[31] >> 4;
            for (uint64 j = 0; j < 32; ++j) {
                x[j] += finalCarry - top * order[j];
                finalCarry = x[j] >> 8;
                x[j] &= 255;
            }
            for (uint64 j = 0; j < 32; ++j) x[j] -= finalCarry * order[j];
            for (uint64 i = 0; i < 32; ++i) {
                x[i + 1] += x[i] >> 8;
                reduced[i] = uint64(x[i] & 255);
            }
        }
    }

    function scalarIsCanonical(
        uint64[32] memory scalar
    ) private pure returns (bool) {
        uint64[32] memory order = scalarOrder();
        for (uint64 n = 32; n != 0; --n) {
            uint64 i = n - 1;
            if (scalar[i] < order[i]) return true;
            if (scalar[i] > order[i]) return false;
        }
        return false;
    }

    function scalarOrder() private pure returns (uint64[32] memory value) {
        value = [
            uint64(0xed),
            uint64(0xd3),
            uint64(0xf5),
            uint64(0x5c),
            uint64(0x1a),
            uint64(0x63),
            uint64(0x12),
            uint64(0x58),
            uint64(0xd6),
            uint64(0x9c),
            uint64(0xf7),
            uint64(0xa2),
            uint64(0xde),
            uint64(0xf9),
            uint64(0xde),
            uint64(0x14),
            uint64(0),
            uint64(0),
            uint64(0),
            uint64(0),
            uint64(0),
            uint64(0),
            uint64(0),
            uint64(0),
            uint64(0),
            uint64(0),
            uint64(0),
            uint64(0),
            uint64(0),
            uint64(0),
            uint64(0),
            uint64(0x10)
        ];
    }

    function scalarOrderSigned() private pure returns (int64[32] memory value) {
        value = [
            int64(0xed),
            int64(0xd3),
            int64(0xf5),
            int64(0x5c),
            int64(0x1a),
            int64(0x63),
            int64(0x12),
            int64(0x58),
            int64(0xd6),
            int64(0x9c),
            int64(0xf7),
            int64(0xa2),
            int64(0xde),
            int64(0xf9),
            int64(0xde),
            int64(0x14),
            int64(0),
            int64(0),
            int64(0),
            int64(0),
            int64(0),
            int64(0),
            int64(0),
            int64(0),
            int64(0),
            int64(0),
            int64(0),
            int64(0),
            int64(0),
            int64(0),
            int64(0),
            int64(0x10)
        ];
    }

    function bytes32ToOctets(
        bytes32 value
    ) private pure returns (uint64[32] memory out) {
        for (uint64 i = 0; i < 32; ++i) out[i] = uint64(uint8(value[i]));
    }

    function octetsEqual(
        uint64[32] memory a,
        uint64[32] memory b
    ) private pure returns (bool) {
        uint64 difference;
        for (uint64 i = 0; i < 32; ++i) difference |= a[i] ^ b[i];
        return difference == 0;
    }
}
