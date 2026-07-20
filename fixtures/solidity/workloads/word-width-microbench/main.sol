// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// Isolates per-operation execution cost by operation class and word width.
///
/// Every method runs `n` iterations of a loop with a loop-carried dependency,
/// so neither solc/Yul nor resolc/LLVM can constant-fold, vectorize, or
/// strength-reduce the chain. The folded state is returned so the work cannot
/// be dropped as dead code.
///
/// Division-family chains (udiv/umod/sdiv/smod) divide by a divisor `d` passed
/// in via calldata (forced nonzero). Because calldata is opaque to the compiler
/// it can never be constant-folded, so these chains take the general division
/// path (Knuth long division / bit-serial) rather than the constant-divisor
/// Barrett path that `divChain` and the `mulmod`/`addmod` constant-modulus
/// chains take. The dividend is refreshed with `^ SEED_X` every iteration so it
/// never collapses to zero. Signed divisors are forced positive (sign bit
/// cleared, `| 1`) to avoid the INT_MIN/-1 overflow. A small `d` (=7) is passed
/// so the quotient is wide at every width (maximal division work where it
/// matters, at 256-bit). Widths [256, 128, 64, 32, 16, 8] probe the newyork narrowing (a 64-bit
/// divide should be far cheaper than a 256-bit one).
contract OpChains {
    uint256 constant P =
        0xFFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF;
    uint256 constant SMALL_M = 0xFFFFFFFFFFFFFFC5;

    uint256 constant SEED_S =
        0x8BB7C8F3_49AC2F16_D5C1E4B7_A2938F01_6E4D5B2A_C7F0E813_59A6B4D2_0F1E2C3B;
    uint256 constant SEED_X =
        0x51D3A2E8_0B4F6C79_E1A5D082_7C3B9F46_2D8E0A15_F6C4B793_A08D1E52_6B49C7F0;

    function mulmodChain(uint256 n) external pure returns (uint256) {
        uint256 s = SEED_S;
        uint256 x = SEED_X;
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = mulmod(s, x, P);
                x ^= s;
            }
        }
        return s ^ x;
    }

    function addmodChain(uint256 n) external pure returns (uint256) {
        uint256 s = SEED_S;
        uint256 x = SEED_X;
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = addmod(s, x, P);
                x ^= s;
            }
        }
        return s ^ x;
    }

    function mulChain(uint256 n) external pure returns (uint256) {
        uint256 s = SEED_S;
        uint256 x = SEED_X;
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = s * x + 1;
                x ^= s;
            }
        }
        return s ^ x;
    }

    function addXorChain(uint256 n) external pure returns (uint256) {
        uint256 s = SEED_S;
        uint256 x = SEED_X;
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = (s + x) ^ (s >> 17);
                x += s | 1;
            }
        }
        return s ^ x;
    }

    function u64Chain(uint256 n) external pure returns (uint256) {
        uint64 s = uint64(SEED_S);
        uint64 x = uint64(SEED_X);
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = (s + x) ^ (s >> 17);
                x += s | 1;
            }
        }
        return uint256(s) ^ uint256(x);
    }

    function u32Chain(uint256 n) external pure returns (uint256) {
        uint32 s = uint32(SEED_S);
        uint32 x = uint32(SEED_X);
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = (s + x) ^ (s >> 17);
                x += s | 1;
            }
        }
        return uint256(s) ^ uint256(x);
    }

    function divChain(uint256 n) external pure returns (uint256) {
        uint256 s = SEED_S;
        uint256 x = SEED_X;
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = (s / 1e18) ^ x;
                x += s | 1;
            }
        }
        return s ^ x;
    }

    function addmodSmallChain(uint256 n) external pure returns (uint256) {
        uint256 s = SEED_S;
        uint256 x = SEED_X;
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = addmod(s, x, SMALL_M);
                x += s | 1;
            }
        }
        return s ^ x;
    }

    function udiv256Chain(uint256 n, uint256 d) external pure returns (uint256) {
        uint256 s = uint256(SEED_S);
        uint256 dd = uint256(d) | 1;
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = (s ^ uint256(SEED_X)) / dd;
            }
        }
        return uint256(s);
    }
    function udiv128Chain(uint256 n, uint256 d) external pure returns (uint256) {
        uint128 s = uint128(SEED_S);
        uint128 dd = uint128(d) | 1;
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = (s ^ uint128(SEED_X)) / dd;
            }
        }
        return uint256(s);
    }
    function udiv64Chain(uint256 n, uint256 d) external pure returns (uint256) {
        uint64 s = uint64(SEED_S);
        uint64 dd = uint64(d) | 1;
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = (s ^ uint64(SEED_X)) / dd;
            }
        }
        return uint256(s);
    }
    function udiv32Chain(uint256 n, uint256 d) external pure returns (uint256) {
        uint32 s = uint32(SEED_S);
        uint32 dd = uint32(d) | 1;
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = (s ^ uint32(SEED_X)) / dd;
            }
        }
        return uint256(s);
    }
    function udiv16Chain(uint256 n, uint256 d) external pure returns (uint256) {
        uint16 s = uint16(SEED_S);
        uint16 dd = uint16(d) | 1;
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = (s ^ uint16(SEED_X)) / dd;
            }
        }
        return uint256(s);
    }
    function udiv8Chain(uint256 n, uint256 d) external pure returns (uint256) {
        uint8 s = uint8(SEED_S);
        uint8 dd = uint8(d) | 1;
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = (s ^ uint8(SEED_X)) / dd;
            }
        }
        return uint256(s);
    }
    function umod256Chain(uint256 n, uint256 d) external pure returns (uint256) {
        uint256 s = uint256(SEED_S);
        uint256 dd = uint256(d) | 1;
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = (s ^ uint256(SEED_X)) % dd;
            }
        }
        return uint256(s);
    }
    function umod128Chain(uint256 n, uint256 d) external pure returns (uint256) {
        uint128 s = uint128(SEED_S);
        uint128 dd = uint128(d) | 1;
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = (s ^ uint128(SEED_X)) % dd;
            }
        }
        return uint256(s);
    }
    function umod64Chain(uint256 n, uint256 d) external pure returns (uint256) {
        uint64 s = uint64(SEED_S);
        uint64 dd = uint64(d) | 1;
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = (s ^ uint64(SEED_X)) % dd;
            }
        }
        return uint256(s);
    }
    function umod32Chain(uint256 n, uint256 d) external pure returns (uint256) {
        uint32 s = uint32(SEED_S);
        uint32 dd = uint32(d) | 1;
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = (s ^ uint32(SEED_X)) % dd;
            }
        }
        return uint256(s);
    }
    function umod16Chain(uint256 n, uint256 d) external pure returns (uint256) {
        uint16 s = uint16(SEED_S);
        uint16 dd = uint16(d) | 1;
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = (s ^ uint16(SEED_X)) % dd;
            }
        }
        return uint256(s);
    }
    function umod8Chain(uint256 n, uint256 d) external pure returns (uint256) {
        uint8 s = uint8(SEED_S);
        uint8 dd = uint8(d) | 1;
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = (s ^ uint8(SEED_X)) % dd;
            }
        }
        return uint256(s);
    }
    function sdiv256Chain(uint256 n, uint256 d) external pure returns (uint256) {
        int256 s = int256(uint256(SEED_S));
        int256 dd = int256((uint256(d) & (type(uint256).max >> 1)) | 1);
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = (s ^ int256(uint256(SEED_X))) / dd;
            }
        }
        return uint256(uint256(s));
    }
    function sdiv128Chain(uint256 n, uint256 d) external pure returns (uint256) {
        int128 s = int128(uint128(SEED_S));
        int128 dd = int128((uint128(d) & (type(uint128).max >> 1)) | 1);
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = (s ^ int128(uint128(SEED_X))) / dd;
            }
        }
        return uint256(uint128(s));
    }
    function sdiv64Chain(uint256 n, uint256 d) external pure returns (uint256) {
        int64 s = int64(uint64(SEED_S));
        int64 dd = int64((uint64(d) & (type(uint64).max >> 1)) | 1);
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = (s ^ int64(uint64(SEED_X))) / dd;
            }
        }
        return uint256(uint64(s));
    }
    function sdiv32Chain(uint256 n, uint256 d) external pure returns (uint256) {
        int32 s = int32(uint32(SEED_S));
        int32 dd = int32((uint32(d) & (type(uint32).max >> 1)) | 1);
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = (s ^ int32(uint32(SEED_X))) / dd;
            }
        }
        return uint256(uint32(s));
    }
    function sdiv16Chain(uint256 n, uint256 d) external pure returns (uint256) {
        int16 s = int16(uint16(SEED_S));
        int16 dd = int16((uint16(d) & (type(uint16).max >> 1)) | 1);
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = (s ^ int16(uint16(SEED_X))) / dd;
            }
        }
        return uint256(uint16(s));
    }
    function sdiv8Chain(uint256 n, uint256 d) external pure returns (uint256) {
        int8 s = int8(uint8(SEED_S));
        int8 dd = int8((uint8(d) & (type(uint8).max >> 1)) | 1);
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = (s ^ int8(uint8(SEED_X))) / dd;
            }
        }
        return uint256(uint8(s));
    }
    function smod256Chain(uint256 n, uint256 d) external pure returns (uint256) {
        int256 s = int256(uint256(SEED_S));
        int256 dd = int256((uint256(d) & (type(uint256).max >> 1)) | 1);
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = (s ^ int256(uint256(SEED_X))) % dd;
            }
        }
        return uint256(uint256(s));
    }
    function smod128Chain(uint256 n, uint256 d) external pure returns (uint256) {
        int128 s = int128(uint128(SEED_S));
        int128 dd = int128((uint128(d) & (type(uint128).max >> 1)) | 1);
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = (s ^ int128(uint128(SEED_X))) % dd;
            }
        }
        return uint256(uint128(s));
    }
    function smod64Chain(uint256 n, uint256 d) external pure returns (uint256) {
        int64 s = int64(uint64(SEED_S));
        int64 dd = int64((uint64(d) & (type(uint64).max >> 1)) | 1);
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = (s ^ int64(uint64(SEED_X))) % dd;
            }
        }
        return uint256(uint64(s));
    }
    function smod32Chain(uint256 n, uint256 d) external pure returns (uint256) {
        int32 s = int32(uint32(SEED_S));
        int32 dd = int32((uint32(d) & (type(uint32).max >> 1)) | 1);
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = (s ^ int32(uint32(SEED_X))) % dd;
            }
        }
        return uint256(uint32(s));
    }
    function smod16Chain(uint256 n, uint256 d) external pure returns (uint256) {
        int16 s = int16(uint16(SEED_S));
        int16 dd = int16((uint16(d) & (type(uint16).max >> 1)) | 1);
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = (s ^ int16(uint16(SEED_X))) % dd;
            }
        }
        return uint256(uint16(s));
    }
    function smod8Chain(uint256 n, uint256 d) external pure returns (uint256) {
        int8 s = int8(uint8(SEED_S));
        int8 dd = int8((uint8(d) & (type(uint8).max >> 1)) | 1);
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = (s ^ int8(uint8(SEED_X))) % dd;
            }
        }
        return uint256(uint8(s));
    }
    function mul128Chain(uint256 n) external pure returns (uint256) {
        uint128 s = uint128(SEED_S);
        uint128 x = uint128(SEED_X);
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = s * x + 1;
                x ^= s;
            }
        }
        return uint256(s) ^ uint256(x);
    }
    function mul64Chain(uint256 n) external pure returns (uint256) {
        uint64 s = uint64(SEED_S);
        uint64 x = uint64(SEED_X);
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = s * x + 1;
                x ^= s;
            }
        }
        return uint256(s) ^ uint256(x);
    }
    function mul32Chain(uint256 n) external pure returns (uint256) {
        uint32 s = uint32(SEED_S);
        uint32 x = uint32(SEED_X);
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = s * x + 1;
                x ^= s;
            }
        }
        return uint256(s) ^ uint256(x);
    }
    function mul16Chain(uint256 n) external pure returns (uint256) {
        uint16 s = uint16(SEED_S);
        uint16 x = uint16(SEED_X);
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = s * x + 1;
                x ^= s;
            }
        }
        return uint256(s) ^ uint256(x);
    }
    function mul8Chain(uint256 n) external pure returns (uint256) {
        uint8 s = uint8(SEED_S);
        uint8 x = uint8(SEED_X);
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = s * x + 1;
                x ^= s;
            }
        }
        return uint256(s) ^ uint256(x);
    }

    function expChain(uint256 n) external pure returns (uint256) {
        uint256 s = SEED_S;
        uint256 x = SEED_X;
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = s ** (x & 0xFF);
                x ^= s;
            }
        }
        return s ^ x;
    }

    function signextendChain(uint256 n) external pure returns (uint256) {
        uint256 s = SEED_S;
        uint256 x = SEED_X;
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                assembly { s := signextend(and(x, 31), s) }
                x ^= s;
            }
        }
        return s ^ x;
    }

    function ltChain(uint256 n) external pure returns (uint256) {
        uint256 s = SEED_S;
        uint256 x = SEED_X;
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = (s < x) ? (s + x) : (s ^ x);
                x += s | 1;
            }
        }
        return s ^ x;
    }

    function shrChain(uint256 n) external pure returns (uint256) {
        uint256 s = SEED_S;
        uint256 x = SEED_X;
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = (s >> (x & 0xFF)) ^ x;
                x += s | 1;
            }
        }
        return s ^ x;
    }
    function mulmodRuntimeChain(uint256 n, uint256 m) external pure returns (uint256) {
        uint256 s = SEED_S;
        uint256 x = SEED_X;
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = mulmod(s, x, m);
                x ^= s;
            }
        }
        return s ^ x;
    }

    function addmodRuntimeChain(uint256 n, uint256 m) external pure returns (uint256) {
        uint256 s = SEED_S;
        uint256 x = SEED_X;
        unchecked {
            for (uint256 i = 0; i < n; ++i) {
                s = addmod(s, x, m);
                x += s | 1;
            }
        }
        return s ^ x;
    }
}
