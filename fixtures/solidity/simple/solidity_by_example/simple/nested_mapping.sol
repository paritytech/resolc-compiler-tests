//! {
//!   "cases": [
//!     {
//!       "name": "first",
//!       "inputs": [
//!         {
//!           "method": "set",
//!           "calldata": [
//!             "1",
//!             "1",
//!             "1"
//!           ],
//!           "caller": "0x808834d2d7e798c341b030f808781cd6edf09ef0"
//!         },
//!         {
//!           "method": "get",
//!           "calldata": [
//!             "1",
//!             "1"
//!           ],
//!           "caller": "0x808834d2d7e798c341b030f808781cd6edf09ef0"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "second",
//!       "inputs": [
//!         {
//!           "method": "set",
//!           "calldata": [
//!             "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc",
//!             "784563478547835256342389483254",
//!             "1"
//!           ],
//!           "caller": "0xae27703449503033049795a9fffc638d7ed19f8d"
//!         },
//!         {
//!           "method": "remove",
//!           "calldata": [
//!             "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc",
//!             "784563478547835256342389483254"
//!           ],
//!           "caller": "0xae27703449503033049795a9fffc638d7ed19f8d"
//!         },
//!         {
//!           "method": "get",
//!           "calldata": [
//!             "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc",
//!             "784563478547835256342389483254"
//!           ],
//!           "caller": "0xae27703449503033049795a9fffc638d7ed19f8d"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "third",
//!       "inputs": [
//!         {
//!           "method": "set",
//!           "calldata": [
//!             "0x127782389999AaAAbBbbCcccddDdeabcfFFffa00",
//!             "453453453464564564564500",
//!             "1"
//!           ],
//!           "caller": "0xcfc011bb55550201d11089e28ff55f98e6b3e93a"
//!         },
//!         {
//!           "method": "set",
//!           "calldata": [
//!             "0x127782389999AaAAbBbbCcccddDdeabcfFFffa00",
//!             "453453453464564564564501",
//!             "1"
//!           ],
//!           "caller": "0xcfc011bb55550201d11089e28ff55f98e6b3e93a"
//!         },
//!         {
//!           "method": "remove",
//!           "calldata": [
//!             "0x127782389999AaAAbBbbCcccddDdeabcfFFffa00",
//!             "453453453464564564564500"
//!           ],
//!           "caller": "0xcfc011bb55550201d11089e28ff55f98e6b3e93a"
//!         },
//!         {
//!           "method": "get",
//!           "calldata": [
//!             "0x127782389999AaAAbBbbCcccddDdeabcfFFffa00",
//!             "453453453464564564564501"
//!           ],
//!           "caller": "0xcfc011bb55550201d11089e28ff55f98e6b3e93a"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     }
//!   ]
//! }


// SPDX-License-Identifier: MIT
pragma solidity >=0.4.16;

contract Test {
    // Nested mapping (mapping from address to another mapping)
    mapping(address => mapping(uint => bool)) public nested;

    function get(address _addr1, uint _i) public view returns (bool) {
        // You can get values from a nested mapping
        // even when it is not initialized
        return nested[_addr1][_i];
    }

    function set(
        address _addr1,
        uint _i,
        bool _boo
    ) public {
        nested[_addr1][_i] = _boo;
    }

    function remove(address _addr1, uint _i) public {
        delete nested[_addr1][_i];
    }
}
