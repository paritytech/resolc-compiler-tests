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
//!           "caller": "0x38ff1c9AE22f878D8662D8180e1d0D1738B21a18"
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
//!           "caller": "0x0c2ce915950F5a8b3460cFC5032329F1fDd82573"
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
//!           "caller": "0x2Aa80e48b1FC48Fb38322901b40086c0b5FaF904"
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
//!           "caller": "0x8C6018BdFCD19efaF70EDae8b8F467D62d1841af"
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
//!           "caller": "0xF4257274CbdD852B999f77F0952aF53CCa3F65b3"
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
//!           "caller": "0x812bB77aed55770D908FE4e05639c199263A7D64"
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
//!           "caller": "0xb59073bb51C9D82178575C23b72292e85BA9655E"
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
//!           "caller": "0xC0b755FAF6D84Cb2ee8d73cb0EF24442E9ef51D8"
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
//!           "caller": "0x340F026aA8E5fCeB149455871554512B058B925C"
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
//!           "caller": "0x02bA49fc4A66E70E3c76FC8AcBc21A5F8F3C0eCA"
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
//!           "caller": "0xB4909509Df7c52412Cf3123d38264339B64A614E"
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
    function main(uint256 a) external view returns(uint256 result) {
        assembly {
            result := blockhash(a)
        }
    }
}
