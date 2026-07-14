// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// Isolates per-operation execution cost by operation class and word width.
///
/// Every method runs `n` iterations of a two-operation loop with a
/// loop-carried dependency (the next iteration's operands depend on the
/// previous result), so neither solc/Yul nor resolc/LLVM can constant-fold,
/// vectorize, or strength-reduce the chain. The folded state is returned so
/// the work cannot be dropped as dead code.
///
/// The chains differ only in the "core" operation:
///   mulmodChain  — 256-bit modular multiplication with an odd 256-bit
///                  modulus (the P-256 field prime): full 512-bit product
///                  plus a 512/256-bit division. The FreshCryptoLib hot op.
///   addmodChain  — 256-bit modular addition: linear add plus a division of
///                  a <=257-bit dividend.
///   mulChain     — 256-bit wrapping multiplication: quadratic limb work,
///                  no division.
///   addXorChain  — 256-bit add/xor/shift: linear limb work, no division.
///   u64Chain     — the addXorChain shape on uint64 (native PVM word).
///   u32Chain     — the addXorChain shape on uint32 (the sha-256 workload's
///                  word size).
contract OpChains {
    // P-256 (secp256r1) field prime: odd, full-width modulus so modular
    // reduction can never degenerate into masking.
    uint256 constant P =
        0xFFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF;

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

    /// 256-bit division by a small constant divisor (the wad-math shape,
    /// `x / 1e18`): the quotient spans ~196 bits, the worst case for a
    /// bit-serial division lowering. The xor with the full-width x restores
    /// the dividend to 256 bits every iteration.
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

    // 64-bit prime modulus: small relative to the 256-bit operands, so the
    // operand reduction inside addmod has a ~192-bit quotient.
    uint256 constant SMALL_M = 0xFFFFFFFFFFFFFFC5;

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
}
