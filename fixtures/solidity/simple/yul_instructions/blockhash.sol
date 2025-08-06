//! {
//!   "cases": [
//!     {
//!       "name": "zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0xB1021fe68BD8E4a97290A7ccFe4e7f90346040c5"
//!         }
//!       ],
//!       "expected": [
//!         "0x3737373737373737373737373737373737373737373737373737373737373737"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "19"
//!           ],
//!           "caller": "0x0BD504CE6B9e10487901C3092B50236f46b86426"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "current_minus_257",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "43"
//!           ],
//!           "caller": "0x7953411cD13988Fc53852dE09b8BBc59b023D5c7"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "current_minus_256",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "44"
//!           ],
//!           "caller": "0xeF8E94cCaB99E05a03Dd274c9D2E204710326c52"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "current_minus_255",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "45"
//!           ],
//!           "caller": "0xe9085D0Bf534fAB85C94b54F7621EA3291BB62d1"
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
//!             "122"
//!           ],
//!           "caller": "0x0521a777806304F9F0156021BD6962ae8b3033B8"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "current_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "299"
//!           ],
//!           "caller": "0x8caE15069Eef2112ED07Fa27B511aCA281A2f0e8"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "current",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "300"
//!           ],
//!           "caller": "0xd3eFd1E99bFd75C635056e2b83980039ec1d0734"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "current_plus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "301"
//!           ],
//!           "caller": "0x5Ceaf81E1E8Bd7c694df899479C3D47401Ef9b26"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "23492394923"
//!           ],
//!           "caller": "0xA162d57136112861905E04E790f16DE4F4bD9ff3"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x63431DBF1eF9C64AFcCA738a2Bea9cB3B5987EDd"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint256 offset) external view returns (uint256 result) {
        assembly {
            result := blockhash(offset)
        }
    }
}
