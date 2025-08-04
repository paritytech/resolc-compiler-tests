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
//!           "caller": "0xfCA1911E32420ff46FfB1A16104367672c861044"
//!         },
//!         {
//!           "method": "get",
//!           "calldata": [
//!             "1",
//!             "1"
//!           ],
//!           "caller": "0xfCA1911E32420ff46FfB1A16104367672c861044"
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
//!           "caller": "0x25d386d0958DF9339d1E990c8B939b839e86c888"
//!         },
//!         {
//!           "method": "remove",
//!           "calldata": [
//!             "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc",
//!             "784563478547835256342389483254"
//!           ],
//!           "caller": "0x25d386d0958DF9339d1E990c8B939b839e86c888"
//!         },
//!         {
//!           "method": "get",
//!           "calldata": [
//!             "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc",
//!             "784563478547835256342389483254"
//!           ],
//!           "caller": "0x25d386d0958DF9339d1E990c8B939b839e86c888"
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
//!           "caller": "0x8960B0bc0a131082770D003f5cdd9B6F2FD92a34"
//!         },
//!         {
//!           "method": "set",
//!           "calldata": [
//!             "0x127782389999AaAAbBbbCcccddDdeabcfFFffa00",
//!             "453453453464564564564501",
//!             "1"
//!           ],
//!           "caller": "0x8960B0bc0a131082770D003f5cdd9B6F2FD92a34"
//!         },
//!         {
//!           "method": "remove",
//!           "calldata": [
//!             "0x127782389999AaAAbBbbCcccddDdeabcfFFffa00",
//!             "453453453464564564564500"
//!           ],
//!           "caller": "0x8960B0bc0a131082770D003f5cdd9B6F2FD92a34"
//!         },
//!         {
//!           "method": "get",
//!           "calldata": [
//!             "0x127782389999AaAAbBbbCcccddDdeabcfFFffa00",
//!             "453453453464564564564501"
//!           ],
//!           "caller": "0x8960B0bc0a131082770D003f5cdd9B6F2FD92a34"
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
