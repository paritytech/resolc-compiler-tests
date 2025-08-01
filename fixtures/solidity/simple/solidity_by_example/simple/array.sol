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
//!           "caller": "0x1F040CcF5F86AfadA466e88815A3acdDf5C920E5"
//!         },
//!         {
//!           "method": "getLength",
//!           "calldata": [],
//!           "expected": [
//!             "1"
//!           ],
//!           "caller": "0x1F040CcF5F86AfadA466e88815A3acdDf5C920E5"
//!         },
//!         {
//!           "method": "get(uint256)",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0x1F040CcF5F86AfadA466e88815A3acdDf5C920E5"
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
//!           "caller": "0x809D6DEe076e847e84D49b3D1Da5F9Ce3b029236"
//!         },
//!         {
//!           "method": "push",
//!           "calldata": [
//!             "523542342"
//!           ],
//!           "caller": "0x809D6DEe076e847e84D49b3D1Da5F9Ce3b029236"
//!         },
//!         {
//!           "method": "pop",
//!           "calldata": [],
//!           "caller": "0x809D6DEe076e847e84D49b3D1Da5F9Ce3b029236"
//!         },
//!         {
//!           "method": "getLength",
//!           "calldata": [],
//!           "expected": [
//!             "1"
//!           ],
//!           "caller": "0x809D6DEe076e847e84D49b3D1Da5F9Ce3b029236"
//!         },
//!         {
//!           "method": "push",
//!           "calldata": [
//!             "78347834"
//!           ],
//!           "caller": "0x809D6DEe076e847e84D49b3D1Da5F9Ce3b029236"
//!         },
//!         {
//!           "method": "push",
//!           "calldata": [
//!             "23515365423543245"
//!           ],
//!           "caller": "0x809D6DEe076e847e84D49b3D1Da5F9Ce3b029236"
//!         },
//!         {
//!           "method": "remove",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0x809D6DEe076e847e84D49b3D1Da5F9Ce3b029236"
//!         },
//!         {
//!           "method": "getLength",
//!           "calldata": [],
//!           "expected": [
//!             "3"
//!           ],
//!           "caller": "0x809D6DEe076e847e84D49b3D1Da5F9Ce3b029236"
//!         },
//!         {
//!           "method": "getArr",
//!           "calldata": [],
//!           "caller": "0x809D6DEe076e847e84D49b3D1Da5F9Ce3b029236"
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
//!           "caller": "0x816550bC8f73DEa55aC62Da7Ca5502Ca60b559f3"
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
//!           "caller": "0x52dC22a906Db88bc187c073a505cDB39ED354De2"
//!         },
//!         {
//!           "method": "arr2",
//!           "calldata": [
//!             "1"
//!           ],
//!           "expected": [
//!             "2"
//!           ],
//!           "caller": "0x52dC22a906Db88bc187c073a505cDB39ED354De2"
//!         },
//!         {
//!           "method": "arr2",
//!           "calldata": [
//!             "2"
//!           ],
//!           "caller": "0x52dC22a906Db88bc187c073a505cDB39ED354De2"
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
//!           "caller": "0x58B3583e433fF3A5Ce69f283029C138a78a0657f"
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
//!           "caller": "0x6FAa10fDAdb5c252F51A7E605A24EC4a28F824e3"
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
