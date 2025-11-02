//! {
//!   "cases": [
//!     {
//!       "name": "f",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [],
//!           "caller": "0x42ba888683427589be5633b0c97954a1e1665548"
//!         }
//!       ],
//!       "expected": []
//!     },
//!     {
//!       "name": "g",
//!       "inputs": [
//!         {
//!           "method": "g",
//!           "calldata": [
//!             "0x20",
//!             "0"
//!           ],
//!           "caller": "0x1e9bd383f88dc3c12a40e6ce7356d1a9843cd30e"
//!         }
//!       ],
//!       "expected": [
//!         "0x20",
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "h",
//!       "inputs": [
//!         {
//!           "method": "h",
//!           "calldata": [
//!             "0x20",
//!             "5",
//!             "1",
//!             "2",
//!             "3",
//!             "4",
//!             "5"
//!           ],
//!           "caller": "0xd5d77e97dfda703fecfbcdfc1fa85ae696c2e818"
//!         }
//!       ],
//!       "expected": []
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;

contract Test {
    uint[] public arr;
    mapping(uint => address) map;
    struct MyStruct {
        uint foo;
    }
    mapping(uint => MyStruct) myStructs;

    function f() public {
        // call _f with state variables
        _f(arr, map, myStructs[1]);

        // get a struct from a mapping
        MyStruct storage myStruct = myStructs[1];
        // create a struct in memory
        MyStruct memory myMemStruct = MyStruct(0);
    }

    function _f(
        uint[] storage _arr,
        mapping(uint => address) storage _map,
        MyStruct storage _myStruct
    ) internal {
        // do something with storage variables
    }

    // You can return memory variables
    function g(uint[] memory _arr) public returns (uint[] memory) {
        // do something with memory array
    }

    function h(uint[] calldata _arr) external {
        // do something with calldata array
    }
}
