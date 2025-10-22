//! {
//!   "cases": [
//!     {
//!       "name": "first",
//!       "inputs": [
//!         {
//!           "method": "set",
//!           "calldata": [
//!             "1",
//!             "10"
//!           ],
//!           "caller": "0x493c8bc625ce5ca0b9cdd1ea9d939757721480ee"
//!         },
//!         {
//!           "method": "get",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0x493c8bc625ce5ca0b9cdd1ea9d939757721480ee"
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
//!           "method": "set",
//!           "calldata": [
//!             "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc",
//!             "1234"
//!           ],
//!           "caller": "0x2946a35aaf53ab85986e2bd5da3f4fd56e6eeae3"
//!         },
//!         {
//!           "method": "remove",
//!           "calldata": [
//!             "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc"
//!           ],
//!           "caller": "0x2946a35aaf53ab85986e2bd5da3f4fd56e6eeae3"
//!         },
//!         {
//!           "method": "get",
//!           "calldata": [
//!             "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc"
//!           ],
//!           "caller": "0x2946a35aaf53ab85986e2bd5da3f4fd56e6eeae3"
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
//!             "12345"
//!           ],
//!           "caller": "0x83209713615b3cfd54a4378fbeff404d06a0cee1"
//!         },
//!         {
//!           "method": "set",
//!           "calldata": [
//!             "0x127782389999AaAAbBbbCcccddDdeabcfFFffa01",
//!             "123456"
//!           ],
//!           "caller": "0x83209713615b3cfd54a4378fbeff404d06a0cee1"
//!         },
//!         {
//!           "method": "remove",
//!           "calldata": [
//!             "0x127782389999AaAAbBbbCcccddDdeabcfFFffa00"
//!           ],
//!           "caller": "0x83209713615b3cfd54a4378fbeff404d06a0cee1"
//!         },
//!         {
//!           "method": "get",
//!           "calldata": [
//!             "0x127782389999AaAAbBbbCcccddDdeabcfFFffa01"
//!           ],
//!           "caller": "0x83209713615b3cfd54a4378fbeff404d06a0cee1"
//!         }
//!       ],
//!       "expected": [
//!         "123456"
//!       ]
//!     }
//!   ]
//! }


// SPDX-License-Identifier: MIT
pragma solidity >=0.4.16;

contract Test {
    // Mapping from address to uint
    mapping(address => uint) public myMap;

    function get(address _addr) public view returns (uint) {
        // Mapping always returns a value.
        // If the value was never set, it will return the default value.
        return myMap[_addr];
    }

    function set(address _addr, uint _i) public {
        // Update the value at this address
        myMap[_addr] = _i;
    }

    function remove(address _addr) public {
        // Reset the value to the default value.
        delete myMap[_addr];
    }
}
