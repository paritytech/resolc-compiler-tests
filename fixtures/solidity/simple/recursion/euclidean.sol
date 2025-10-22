//! {
//!   "modes": [
//!     "Y",
//!     "E"
//!   ],
//!   "cases": [
//!     {
//!       "name": "gcd_15_6",
//!       "inputs": [
//!         {
//!           "method": "gcd",
//!           "calldata": [
//!             "15",
//!             "6"
//!           ],
//!           "caller": "0x78eab283d5156c2b5aabc5bf28bdc6152e99f3de"
//!         }
//!       ],
//!       "expected": [
//!         "3"
//!       ]
//!     },
//!     {
//!       "name": "gcd_23_19",
//!       "inputs": [
//!         {
//!           "method": "gcd",
//!           "calldata": [
//!             "23",
//!             "19"
//!           ],
//!           "caller": "0x2f884aae479deb75df16fa8dd4fbdae2554b163e"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "gcd_76800_15435",
//!       "inputs": [
//!         {
//!           "method": "gcd",
//!           "calldata": [
//!             "76800",
//!             "15435"
//!           ],
//!           "caller": "0x51b730a076702766e783c2855c10dc325407702e"
//!         }
//!       ],
//!       "expected": [
//!         "15"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function gcd(uint64 a, uint64 b) public pure returns(uint64) {
        if (b == 0) {
            return a;
        }

        return gcd(b, a%b);
    }
}
