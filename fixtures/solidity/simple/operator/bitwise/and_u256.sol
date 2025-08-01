//! {
//!   "cases": [
//!     {
//!       "name": "zero_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0xd9F702A4A8B339Af4bbCb948Ca7C6C7035A0737a"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "24",
//!             "8"
//!           ],
//!           "caller": "0x72519C1D8F3B9c11d536cEcBF57f23E5ae7F087c"
//!         }
//!       ],
//!       "expected": [
//!         "8"
//!       ]
//!     },
//!     {
//!       "name": "max_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "115792089237316195423570985008687907853269984665640564039457584007913129639935",
//!             "115792089237316195423570985008687907853269984665640564039457584007913129639935"
//!           ],
//!           "caller": "0x71643160cb2e89EfC62a52bB42987a2195AD0289"
//!         }
//!       ],
//!       "expected": [
//!         "115792089237316195423570985008687907853269984665640564039457584007913129639935"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint256 a, uint256 b) public pure returns(uint256) {
        return a & b;
    }
}
