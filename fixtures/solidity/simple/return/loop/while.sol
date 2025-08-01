//! {
//!   "cases": [
//!     {
//!       "name": "entry0",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0x7d3c6BAc03bF729c49163d818512c0566653B31c"
//!         }
//!       ],
//!       "expected": [
//!         "4"
//!       ]
//!     },
//!     {
//!       "name": "entry1",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0x41aAe400F0FEe59c28174BB14f664a3aFCC411aE"
//!         }
//!       ],
//!       "expected": [
//!         "5"
//!       ]
//!     },
//!     {
//!       "name": "entry2",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2"
//!           ],
//!           "caller": "0x09C62419e3d48DB8519D39dE0B5829D5759EBe46"
//!         }
//!       ],
//!       "expected": [
//!         "6"
//!       ]
//!     },
//!     {
//!       "name": "entry3",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "3"
//!           ],
//!           "caller": "0x9D500917043CD5ab9aE96D134A129153669A188D"
//!         }
//!       ],
//!       "expected": [
//!         "7"
//!       ]
//!     },
//!     {
//!       "name": "entry4",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "7"
//!           ],
//!           "caller": "0xA916F332AD600c50e45B91fe471b207aa0AA0d76"
//!         }
//!       ],
//!       "expected": [
//!         "99"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint8 param) public pure returns(uint64) {
        uint8 i = 0;
        while (i < 10) {
            if (param == 0 && i == 2) {
                return i * 2; // 4
            }
            while (true) {
                if (param == 1) {
                    return 5;
                }
                uint8 j = 10;
                while (j > 0) {
                    if (param == 2 && j == 4) {
                        return param + j; // 6
                    }
                    j -= 2;
                }
                break;
            }
            if (param == 3 && i == 7) {
                return i;
            }
            i += 1;
        }
        return 99;
    }
}