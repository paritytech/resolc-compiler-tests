//! {
//!   "cases": [
//!     {
//!       "name": "boo",
//!       "inputs": [
//!         {
//!           "method": "boo",
//!           "calldata": [],
//!           "caller": "0xCBefAf134168187002aE9E1dA8f3dDB18dB46c72"
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
//!           "caller": "0x08f36724200260bf84285CE775Ea27B8230bc35b"
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
//!           "caller": "0xB81341E57335e5b45954Be8b7FdEccd96721B4e0"
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
//!           "caller": "0x682793a31d0dcb8A62Ca34138639cFf79DA52d0B"
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
//!           "caller": "0xeD06Bbde5a719cd10bcf039F7F472b11eBd6e504"
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
//!           "caller": "0xb33E72f8F8528E1f91e6E0179BE4669453C88295"
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
//!           "caller": "0xCAbFe64A60034BFC29487526d4cC23f027dA081D"
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
//!           "caller": "0xa11079acbCbD40753AD0135B2a430a8c02c5346D"
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
//!           "caller": "0x0bf7ad3459dC5e7D7cB692683B29BA7230A03D83"
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
//!           "caller": "0xbB047c14Fd90CA7a683224605ff0425b5ABa6808"
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
//!           "caller": "0x12eB2cf9E3804DbbcEf4Cc984DD45cd5cCe946e0"
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
//!           "caller": "0x0328cd3917678d269E1e7eC19b2a284d67228200"
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
//!           "caller": "0xe49aFEFbF1E714786F08eD0587991f94183d722a"
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
//!           "caller": "0xA301B589E16bD86CaDDb5Cb07637Abe3EB9a8f90"
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
