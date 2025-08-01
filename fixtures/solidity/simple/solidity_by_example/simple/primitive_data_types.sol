//! {
//!   "cases": [
//!     {
//!       "name": "boo",
//!       "inputs": [
//!         {
//!           "method": "boo",
//!           "calldata": [],
//!           "caller": "0x78be56eD848634B40AAFcc4cD139e4Eb2C7E1D27"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "u8",
//!       "inputs": [
//!         {
//!           "method": "u8",
//!           "calldata": [],
//!           "caller": "0x935Fe417924bc79b7FCaB6b569B291F801e6A08D"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "u256",
//!       "inputs": [
//!         {
//!           "method": "u256",
//!           "calldata": [],
//!           "caller": "0x3cEf1A80886b8f1F443Bbaf41C17DcE77A31d1b2"
//!         }
//!       ],
//!       "expected": [
//!         "456"
//!       ]
//!     },
//!     {
//!       "name": "u",
//!       "inputs": [
//!         {
//!           "method": "u()",
//!           "calldata": [],
//!           "caller": "0x524e6c87251132Fc449ebD721b3a0AE4F620aef8"
//!         }
//!       ],
//!       "expected": [
//!         "123"
//!       ]
//!     },
//!     {
//!       "name": "i8",
//!       "inputs": [
//!         {
//!           "method": "i8",
//!           "calldata": [],
//!           "caller": "0xa2550A3d1806fD2ea471786d2fc60dBAA0Ea9C87"
//!         }
//!       ],
//!       "expected": [
//!         "-1"
//!       ]
//!     },
//!     {
//!       "name": "i256",
//!       "inputs": [
//!         {
//!           "method": "i256",
//!           "calldata": [],
//!           "caller": "0xB535c27f8bAFA4B3239dCb2b89C4e1541f1fb1F0"
//!         }
//!       ],
//!       "expected": [
//!         "456"
//!       ]
//!     },
//!     {
//!       "name": "i",
//!       "inputs": [
//!         {
//!           "method": "i()",
//!           "calldata": [],
//!           "caller": "0x1F00CB66e68CF0b0ed4E3a44fD625eCA7fE0bAf2"
//!         }
//!       ],
//!       "expected": [
//!         "-123"
//!       ]
//!     },
//!     {
//!       "name": "minInt",
//!       "inputs": [
//!         {
//!           "method": "minInt",
//!           "calldata": [],
//!           "caller": "0x80C2AffDDc0eec938ba701407329826EF9c18fC2"
//!         }
//!       ],
//!       "expected": [
//!         "0x8000000000000000000000000000000000000000000000000000000000000000"
//!       ]
//!     },
//!     {
//!       "name": "maxInt",
//!       "inputs": [
//!         {
//!           "method": "maxInt",
//!           "calldata": [],
//!           "caller": "0x3349D32a7F416Ec0559DF7EF2A8B16cf03f37F8d"
//!         }
//!       ],
//!       "expected": [
//!         "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!       ]
//!     },
//!     {
//!       "name": "addr",
//!       "inputs": [
//!         {
//!           "method": "addr",
//!           "calldata": [],
//!           "caller": "0x6c7495107ccC046649F29fF12402B6B08d946F97"
//!         }
//!       ],
//!       "expected": [
//!         "0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c"
//!       ]
//!     },
//!     {
//!       "name": "defaultBoo",
//!       "inputs": [
//!         {
//!           "method": "defaultBoo",
//!           "calldata": [],
//!           "caller": "0x577a0A88eF38f674792682255e41aC3129d47430"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "defaultUint",
//!       "inputs": [
//!         {
//!           "method": "defaultUint",
//!           "calldata": [],
//!           "caller": "0x75D7E8edD08aDd9BE4C72A062d5bb37D0439B36f"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "defaultInt",
//!       "inputs": [
//!         {
//!           "method": "defaultInt",
//!           "calldata": [],
//!           "caller": "0x6521Ec5cD803Aa70924f3cAbD39A527FeD9F1644"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "defaultAddr",
//!       "inputs": [
//!         {
//!           "method": "defaultAddr",
//!           "calldata": [],
//!           "caller": "0x0B5fc270349f6fD510a8619d0445AAc68186514B"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT
pragma solidity >=0.6.8;

contract Test {
    bool public boo = true;

    /*
    uint stands for unsigned integer, meaning non negative integers
    different sizes are available
        uint8   ranges from 0 to 2 ** 8 - 1
        uint16  ranges from 0 to 2 ** 16 - 1
        ...
        uint256 ranges from 0 to 2 ** 256 - 1
    */
    uint8 public u8 = 1;
    uint public u256 = 456;
    uint public u = 123; // uint is an alias for uint256

    /*
    Negative numbers are allowed for int types.
    Like uint, different ranges are available from int8 to int256

    int256 ranges from -2 ** 255 to 2 ** 255 - 1
    int128 ranges from -2 ** 127 to 2 ** 127 - 1
    */
    int8 public i8 = -1;
    int public i256 = 456;
    int public i = -123; // int is same as int256

    // minimum and maximum of int
    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;

    // Default values
    // Unassigned variables have a default value
    bool public defaultBoo; // false
    uint public defaultUint; // 0
    int public defaultInt; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000
}
