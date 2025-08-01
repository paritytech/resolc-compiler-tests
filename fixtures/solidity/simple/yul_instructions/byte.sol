//! {
//!   "cases": [
//!     {
//!       "name": "zero_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0x4017a485589Ca39A97A32Bd623e31119E64B9D1B"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "1"
//!           ],
//!           "caller": "0x2859AEe0D8b7C43215a81e7B5C78A1Cf6E7321b2"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_ordinar_to_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0x0023892AB2783278893489CDE384983994390349FC2988248AA83483898934FC"
//!           ],
//!           "caller": "0xc8FA62A53d53FD5953061D66BD64adb356082844"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
//!           ],
//!           "caller": "0xC50e25Efdb3c990042b9fF2bb26fC98d1BF5a54a"
//!         }
//!       ],
//!       "expected": [
//!         "0x53"
//!       ]
//!     },
//!     {
//!       "name": "zero_ordinar_to_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0xFF872893489348939CA433905903CDF3488893483003400FC4983CCC34343443"
//!           ],
//!           "caller": "0x5487253B5a381D126D2524e45f2CBcC4EeBcEFf3"
//!         }
//!       ],
//!       "expected": [
//!         "255"
//!       ]
//!     },
//!     {
//!       "name": "zero_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x447885c2e4d3527F6b14769b5DA3219da386e1AD"
//!         }
//!       ],
//!       "expected": [
//!         "255"
//!       ]
//!     },
//!     {
//!       "name": "one_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0"
//!           ],
//!           "caller": "0x8725243741240895C90E23B2c5051A579Df68342"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "1"
//!           ],
//!           "caller": "0xC4122B4BAd89796e537046AA410832FF637A8039"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_ordinar_to_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0x2300892AB2783278893489CDE384983994390349FC2988248AA83483898934FC"
//!           ],
//!           "caller": "0xACaE7B4E6e8afe5Ed2262fb309a7b5479F2271Ca"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
//!           ],
//!           "caller": "0xcCA8134960cfdBE43A9A416C5d9e04c938519f6f"
//!         }
//!       ],
//!       "expected": [
//!         "0x48"
//!       ]
//!     },
//!     {
//!       "name": "one_ordinar_to_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0x87FF2893489348939CA433905903CDF3488893483003400FC4983CCC34343443"
//!           ],
//!           "caller": "0xD226A2e20E08Df256529D282892638f84d2Cd690"
//!         }
//!       ],
//!       "expected": [
//!         "255"
//!       ]
//!     },
//!     {
//!       "name": "one_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x1B0ba11b4EbAac3cb167403a83cd1Ea4F1f5C6d9"
//!         }
//!       ],
//!       "expected": [
//!         "255"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "17",
//!             "0"
//!           ],
//!           "caller": "0xbce0b78af53E9CF89B1B52eb03eCC0f1CA011011"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "17",
//!             "1"
//!           ],
//!           "caller": "0xd975E4Db11D75f109Aa1013A592A6077c0CdA738"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_to_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "17",
//!             "0x23892AB2783278893489CDE38498399439000349FC2988248AA83483898934FC"
//!           ],
//!           "caller": "0xAbf1fcE34489B58619f6cfb75D035021097e9342"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "17",
//!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
//!           ],
//!           "caller": "0x7C47aB60c525Ae90E76419f2f883b794fF157e17"
//!         }
//!       ],
//!       "expected": [
//!         "0xCD"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_to_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "17",
//!             "0x872893489348939CA433905903CDF34888FF93483003400FC4983CCC34343443"
//!           ],
//!           "caller": "0xEbc4aE1e3e3dE27D11Edf9D4FFA458D9Af3aaECA"
//!         }
//!       ],
//!       "expected": [
//!         "255"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "17",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0xf6D820Dca547b181f00001f5335Df4949877bCBc"
//!         }
//!       ],
//!       "expected": [
//!         "255"
//!       ]
//!     },
//!     {
//!       "name": "last_byte_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "31",
//!             "0"
//!           ],
//!           "caller": "0x9D9242f657a99c6105F62E1a7759c299D151629C"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "last_byte_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "31",
//!             "1"
//!           ],
//!           "caller": "0xA7C15636cdbe2b1e02228f50D448E81D5a525D7D"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "last_byte_ordinar_to_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "31",
//!             "0x23892AB2783278893489CDE384983994390349FC2988248AA83483898934FC00"
//!           ],
//!           "caller": "0xe99b08Fcf6472035c8107ffC8FbE937553a342ca"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "last_byte_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "31",
//!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
//!           ],
//!           "caller": "0xa94a9191bf4A9a390f2115d8841BDdE97A0187f4"
//!         }
//!       ],
//!       "expected": [
//!         "0x43"
//!       ]
//!     },
//!     {
//!       "name": "last_byte_ordinar_to_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "31",
//!             "0x872893489348939CA433905903CDF3488893483003400FC4983CCC34343443FF"
//!           ],
//!           "caller": "0x5D4e9Bc164828344D406d117A1C8b568690B7efB"
//!         }
//!       ],
//!       "expected": [
//!         "255"
//!       ]
//!     },
//!     {
//!       "name": "last_byte_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "31",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0xb3B0cFd32199d6aAE70A84360a7163d309D01623"
//!         }
//!       ],
//!       "expected": [
//!         "255"
//!       ]
//!     },
//!     {
//!       "name": "last_byte_plus_one_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "32",
//!             "0"
//!           ],
//!           "caller": "0x41E8D229815EC91097c567C3D2121D0552F24566"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "last_byte_plus_one_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "32",
//!             "1"
//!           ],
//!           "caller": "0xC1CD3bE2DF04598C467F9230C1Fc02A8179920B6"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "last_byte_plus_one_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "32",
//!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
//!           ],
//!           "caller": "0xE91447f9363ad98787767C94d27824eDbde4568E"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "last_byte_plus_one_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "32",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0xEB51CF5436DEBf7CC019538D686c8c2a3734aE0E"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "35242523534534534233424343343443",
//!             "0"
//!           ],
//!           "caller": "0xD49621b61aaEf9833c90A460c7982d6F4E8dcA36"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "35242523534534534233424343343443",
//!             "1"
//!           ],
//!           "caller": "0x96424bda55B2B99f40C4FE9f3c250D45352064c7"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "35242523534534534233424343343443",
//!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
//!           ],
//!           "caller": "0x6a084BDE3B9899a4D087898d03c2C20907158Ae6"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "35242523534534534233424343343443",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x923650EA5285887A5902f43816cb72882a5451A7"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0"
//!           ],
//!           "caller": "0xD3ad2c2de12Ed551DC53331597070F0b1ae863E7"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "1"
//!           ],
//!           "caller": "0x0B8ff6aE733033F77c2242B0fd4D20Acde2aB01D"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
//!           ],
//!           "caller": "0x57C4D07E95B6638779af1f893C346f676078955F"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0xAdF99FC6bDcaC1107efACE03C011Bd59C1A77AAD"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint256 a, uint256 b) external pure returns(uint256 result) {
        assembly {
            result := byte(a, b)
        }
    }
}
