//! {
//!   "cases": [
//!     {
//!       "name": "first",
//!       "inputs": [
//!         {
//!           "method": "push",
//!           "calldata": [
//!             "10"
//!           ],
//!           "caller": "0x300d76c7145753f6f2515f150f39a14a6f198f7f"
//!         },
//!         {
//!           "method": "getLength",
//!           "calldata": [],
//!           "expected": [
//!             "1"
//!           ],
//!           "caller": "0x300d76c7145753f6f2515f150f39a14a6f198f7f"
//!         },
//!         {
//!           "method": "get(uint256)",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0x300d76c7145753f6f2515f150f39a14a6f198f7f"
//!         }
//!       ],
//!       "expected": [
//!         "10"
//!       ]
//!     },
//!     {
//!       "name": "second",
//!       "inputs": [
//!         {
//!           "method": "push",
//!           "calldata": [
//!             "37848742"
//!           ],
//!           "caller": "0xc92a3cb75461aba05e2f225c175fda7fcb6fd892"
//!         },
//!         {
//!           "method": "push",
//!           "calldata": [
//!             "523542342"
//!           ],
//!           "caller": "0xc92a3cb75461aba05e2f225c175fda7fcb6fd892"
//!         },
//!         {
//!           "method": "pop",
//!           "calldata": [],
//!           "caller": "0xc92a3cb75461aba05e2f225c175fda7fcb6fd892"
//!         },
//!         {
//!           "method": "getLength",
//!           "calldata": [],
//!           "expected": [
//!             "1"
//!           ],
//!           "caller": "0xc92a3cb75461aba05e2f225c175fda7fcb6fd892"
//!         },
//!         {
//!           "method": "push",
//!           "calldata": [
//!             "78347834"
//!           ],
//!           "caller": "0xc92a3cb75461aba05e2f225c175fda7fcb6fd892"
//!         },
//!         {
//!           "method": "push",
//!           "calldata": [
//!             "23515365423543245"
//!           ],
//!           "caller": "0xc92a3cb75461aba05e2f225c175fda7fcb6fd892"
//!         },
//!         {
//!           "method": "remove",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0xc92a3cb75461aba05e2f225c175fda7fcb6fd892"
//!         },
//!         {
//!           "method": "getLength",
//!           "calldata": [],
//!           "expected": [
//!             "3"
//!           ],
//!           "caller": "0xc92a3cb75461aba05e2f225c175fda7fcb6fd892"
//!         },
//!         {
//!           "method": "getArr",
//!           "calldata": [],
//!           "caller": "0xc92a3cb75461aba05e2f225c175fda7fcb6fd892"
//!         }
//!       ],
//!       "expected": [
//!         "0x20",
//!         "3",
//!         "37848742",
//!         "0",
//!         "23515365423543245"
//!       ]
//!     },
//!     {
//!       "name": "popEmpty",
//!       "inputs": [
//!         {
//!           "method": "pop",
//!           "calldata": [],
//!           "caller": "0xd79ffa521de3a9d53e5caf565700cdb416ac4c75"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": "<0.8",
//!           "return_data": [],
//!           "exception": true
//!         },
//!         {
//!           "compiler_version": ">=0.8",
//!           "return_data": [
//!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000003100000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "exception": true
//!         }
//!       ]
//!     },
//!     {
//!       "name": "defaultGetter",
//!       "inputs": [
//!         {
//!           "method": "arr2",
//!           "calldata": [
//!             "0"
//!           ],
//!           "expected": [
//!             "1"
//!           ],
//!           "caller": "0x84a533d4aab3f83b818e3b243c0e4022e535c482"
//!         },
//!         {
//!           "method": "arr2",
//!           "calldata": [
//!             "1"
//!           ],
//!           "expected": [
//!             "2"
//!           ],
//!           "caller": "0x84a533d4aab3f83b818e3b243c0e4022e535c482"
//!         },
//!         {
//!           "method": "arr2",
//!           "calldata": [
//!             "2"
//!           ],
//!           "caller": "0x84a533d4aab3f83b818e3b243c0e4022e535c482"
//!         }
//!       ],
//!       "expected": [
//!         "3"
//!       ]
//!     },
//!     {
//!       "name": "fixedSizeArray",
//!       "inputs": [
//!         {
//!           "method": "myFixedSizeArr",
//!           "calldata": [
//!             "9"
//!           ],
//!           "caller": "0x206bca117920d83063fe44b672d5657032f611d1"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "examples",
//!       "inputs": [
//!         {
//!           "method": "examples",
//!           "calldata": [],
//!           "caller": "0x634dbffb876995b0e262610f8650c9b80e60677f"
//!         }
//!       ],
//!       "expected": []
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;

contract Test {
    // Several ways to initialize an array
    uint[] public arr;
    uint[] public arr2 = [1, 2, 3];
    // Fixed sized array, all elements initialize to 0
    uint[10] public myFixedSizeArr;

    function get(uint i) public view returns (uint) {
        return arr[i];
    }

    // Solidity can return the entire array.
    // But this function should be avoided for
    // arrays that can grow indefinitely in length.
    function getArr() public view returns (uint[] memory) {
        return arr;
    }

    function push(uint i) public {
        // Append to array
        // This will increase the array length by 1.
        arr.push(i);
    }

    function pop() public {
        // Remove last element from array
        // This will decrease the array length by 1
        arr.pop();
    }

    function getLength() public view returns (uint) {
        return arr.length;
    }

    function remove(uint index) public {
        // Delete does not change the array length.
        // It resets the value at index to it's default value,
        // in this case 0
        delete arr[index];
    }

    function examples() external {
        // create array in memory, only fixed size can be created
        uint[] memory a = new uint[](5);
    }
}
