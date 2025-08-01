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
//!           "caller": "0x0c575B9fF5795667a48A403628129908Ae131363"
//!         },
//!         {
//!           "method": "get",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0x0c575B9fF5795667a48A403628129908Ae131363"
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
//!           "caller": "0x0f17CcAb520BcF1c9Bd0688117de56e950E67f37"
//!         },
//!         {
//!           "method": "remove",
//!           "calldata": [
//!             "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc"
//!           ],
//!           "caller": "0x0f17CcAb520BcF1c9Bd0688117de56e950E67f37"
//!         },
//!         {
//!           "method": "get",
//!           "calldata": [
//!             "0x127782389999AaAAbBbbCcccddDdeabcfFFfCcCc"
//!           ],
//!           "caller": "0x0f17CcAb520BcF1c9Bd0688117de56e950E67f37"
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
//!           "caller": "0x788CE6bfD5A5b72B2d3741efCB4B8DdA33d776f4"
//!         },
//!         {
//!           "method": "set",
//!           "calldata": [
//!             "0x127782389999AaAAbBbbCcccddDdeabcfFFffa01",
//!             "123456"
//!           ],
//!           "caller": "0x788CE6bfD5A5b72B2d3741efCB4B8DdA33d776f4"
//!         },
//!         {
//!           "method": "remove",
//!           "calldata": [
//!             "0x127782389999AaAAbBbbCcccddDdeabcfFFffa00"
//!           ],
//!           "caller": "0x788CE6bfD5A5b72B2d3741efCB4B8DdA33d776f4"
//!         },
//!         {
//!           "method": "get",
//!           "calldata": [
//!             "0x127782389999AaAAbBbbCcccddDdeabcfFFffa01"
//!           ],
//!           "caller": "0x788CE6bfD5A5b72B2d3741efCB4B8DdA33d776f4"
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
