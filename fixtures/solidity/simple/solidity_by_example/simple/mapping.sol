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
//!           "caller": "0x1e6f67255276B582B0759A980c1e525Ec68e1552"
//!         },
//!         {
//!           "method": "get",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0x1e6f67255276B582B0759A980c1e525Ec68e1552"
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
//!           "caller": "0x5e158AeB7da4ccA81df95Bc70077414dFBa82347"
//!         },
//!         {
//!           "method": "remove",
//!           "calldata": [
//!             "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc"
//!           ],
//!           "caller": "0x5e158AeB7da4ccA81df95Bc70077414dFBa82347"
//!         },
//!         {
//!           "method": "get",
//!           "calldata": [
//!             "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc"
//!           ],
//!           "caller": "0x5e158AeB7da4ccA81df95Bc70077414dFBa82347"
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
//!           "caller": "0xAA46AD57351A602eB8Fb0E436de419503B6dDBFc"
//!         },
//!         {
//!           "method": "set",
//!           "calldata": [
//!             "0x127782389999AaAAbBbbCcccddDdeabcfFFffa01",
//!             "123456"
//!           ],
//!           "caller": "0xAA46AD57351A602eB8Fb0E436de419503B6dDBFc"
//!         },
//!         {
//!           "method": "remove",
//!           "calldata": [
//!             "0x127782389999AaAAbBbbCcccddDdeabcfFFffa00"
//!           ],
//!           "caller": "0xAA46AD57351A602eB8Fb0E436de419503B6dDBFc"
//!         },
//!         {
//!           "method": "get",
//!           "calldata": [
//!             "0x127782389999AaAAbBbbCcccddDdeabcfFFffa01"
//!           ],
//!           "caller": "0xAA46AD57351A602eB8Fb0E436de419503B6dDBFc"
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
