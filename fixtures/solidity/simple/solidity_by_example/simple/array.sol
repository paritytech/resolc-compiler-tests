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
//!           "caller": "0x9b2eEE65B11CE3F7401542A585812ef8b1B1733E"
//!         },
//!         {
//!           "method": "getLength",
//!           "calldata": [],
//!           "expected": [
//!             "1"
//!           ],
//!           "caller": "0x9b2eEE65B11CE3F7401542A585812ef8b1B1733E"
//!         },
//!         {
//!           "method": "get(uint256)",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0x9b2eEE65B11CE3F7401542A585812ef8b1B1733E"
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
//!           "caller": "0xa545890F0669fa7FB4e5F993B381F4F764Feb23b"
//!         },
//!         {
//!           "method": "push",
//!           "calldata": [
//!             "523542342"
//!           ],
//!           "caller": "0xa545890F0669fa7FB4e5F993B381F4F764Feb23b"
//!         },
//!         {
//!           "method": "pop",
//!           "calldata": [],
//!           "caller": "0xa545890F0669fa7FB4e5F993B381F4F764Feb23b"
//!         },
//!         {
//!           "method": "getLength",
//!           "calldata": [],
//!           "expected": [
//!             "1"
//!           ],
//!           "caller": "0xa545890F0669fa7FB4e5F993B381F4F764Feb23b"
//!         },
//!         {
//!           "method": "push",
//!           "calldata": [
//!             "78347834"
//!           ],
//!           "caller": "0xa545890F0669fa7FB4e5F993B381F4F764Feb23b"
//!         },
//!         {
//!           "method": "push",
//!           "calldata": [
//!             "23515365423543245"
//!           ],
//!           "caller": "0xa545890F0669fa7FB4e5F993B381F4F764Feb23b"
//!         },
//!         {
//!           "method": "remove",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0xa545890F0669fa7FB4e5F993B381F4F764Feb23b"
//!         },
//!         {
//!           "method": "getLength",
//!           "calldata": [],
//!           "expected": [
//!             "3"
//!           ],
//!           "caller": "0xa545890F0669fa7FB4e5F993B381F4F764Feb23b"
//!         },
//!         {
//!           "method": "getArr",
//!           "calldata": [],
//!           "caller": "0xa545890F0669fa7FB4e5F993B381F4F764Feb23b"
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
//!           "caller": "0x883C7b9c8F4527383E5a135A6413964875ba926e"
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
//!           "caller": "0xF2F51E34b446CC2C3a334BE55Fe691840985eecC"
//!         },
//!         {
//!           "method": "arr2",
//!           "calldata": [
//!             "1"
//!           ],
//!           "expected": [
//!             "2"
//!           ],
//!           "caller": "0xF2F51E34b446CC2C3a334BE55Fe691840985eecC"
//!         },
//!         {
//!           "method": "arr2",
//!           "calldata": [
//!             "2"
//!           ],
//!           "caller": "0xF2F51E34b446CC2C3a334BE55Fe691840985eecC"
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
//!           "caller": "0xBC1503c2eBd7FB01bBb722016a78A4d2f78213B9"
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
//!           "caller": "0x2Ae28c3e3F09D82A16FFA998321f6506Ea5d702E"
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
