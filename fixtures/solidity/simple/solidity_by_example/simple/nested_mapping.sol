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
//!           "caller": "0x2a81FD7001b837710f0C6E09dF44170e9619FC28"
//!         },
//!         {
//!           "method": "get",
//!           "calldata": [
//!             "1",
//!             "1"
//!           ],
//!           "caller": "0x2a81FD7001b837710f0C6E09dF44170e9619FC28"
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
//!           "caller": "0x56ED5E5427017ce33DbCd30777E2A13B9275c008"
//!         },
//!         {
//!           "method": "remove",
//!           "calldata": [
//!             "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc",
//!             "784563478547835256342389483254"
//!           ],
//!           "caller": "0x56ED5E5427017ce33DbCd30777E2A13B9275c008"
//!         },
//!         {
//!           "method": "get",
//!           "calldata": [
//!             "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc",
//!             "784563478547835256342389483254"
//!           ],
//!           "caller": "0x56ED5E5427017ce33DbCd30777E2A13B9275c008"
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
//!           "caller": "0xD9b4580C8Ee95c4Af527AdF04417f47dd3f6C436"
//!         },
//!         {
//!           "method": "set",
//!           "calldata": [
//!             "0x127782389999AaAAbBbbCcccddDdeabcfFFffa00",
//!             "453453453464564564564501",
//!             "1"
//!           ],
//!           "caller": "0xD9b4580C8Ee95c4Af527AdF04417f47dd3f6C436"
//!         },
//!         {
//!           "method": "remove",
//!           "calldata": [
//!             "0x127782389999AaAAbBbbCcccddDdeabcfFFffa00",
//!             "453453453464564564564500"
//!           ],
//!           "caller": "0xD9b4580C8Ee95c4Af527AdF04417f47dd3f6C436"
//!         },
//!         {
//!           "method": "get",
//!           "calldata": [
//!             "0x127782389999AaAAbBbbCcccddDdeabcfFFffa00",
//!             "453453453464564564564501"
//!           ],
//!           "caller": "0xD9b4580C8Ee95c4Af527AdF04417f47dd3f6C436"
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
