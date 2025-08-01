//! {
//!   "targets": [
//!     "eravm"
//!   ],
//!   "cases": [
//!     {
//!       "name": "add",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0x01"
//!           ],
//!           "caller": "0x216FaEC139a61329Ef8B31d982DE427D9C007a9E"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "mul",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0x02"
//!           ],
//!           "caller": "0x11Eb17B20113AE923D72E52870D40BF59A08B40D"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "sub",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0x03"
//!           ],
//!           "caller": "0xe69017fcC36bBC7fB167B9585bDd47a950bA1992"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "div",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0x04"
//!           ],
//!           "caller": "0xe5549f429A72BfA618Cf5C1aFDAc22A730dF6a1a"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "sdiv",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0x05"
//!           ],
//!           "caller": "0x161c2E10407e2A87959C0bae1f342C80EaeA28f3"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "mod",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0x06"
//!           ],
//!           "caller": "0x4161220db043a7d682e0AD123A3F8FEa165711aA"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "smod",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0x07"
//!           ],
//!           "caller": "0xB33609811fb3D9Fc8955dc6E9e086F1F08fc3a65"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "addmod",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0x08"
//!           ],
//!           "caller": "0x4148555eA4c00e14f81Ef399bBE67ef2FD9811B1"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x02"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "mulmod",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0x09"
//!           ],
//!           "caller": "0x4F81e991f76276A17cA92a1321f37189b1727F77"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x02"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "exp",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0x0a"
//!           ],
//!           "caller": "0xBa95e317EAd06b55c8B70276FC63904b3339dFa1"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "signextend",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0x0b"
//!           ],
//!           "caller": "0xF6203C4FB14dA640D11FbD9573E3958D017E6745"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "lt",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0x10"
//!           ],
//!           "caller": "0x73377d6228266393747eFa710017872d6dd5B9A6"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "gt",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0x11"
//!           ],
//!           "caller": "0xf7862d105fc6EE69604DEcc30AA89472Ad405961"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "slt",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0x12"
//!           ],
//!           "caller": "0xFa1205E19719C248323563BD55cd8bFD08b0CBC6"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "sgt",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0x13"
//!           ],
//!           "caller": "0x4F46630115B446f8F7CeBe1E5961ef7858c25204"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "eq",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0x14"
//!           ],
//!           "caller": "0x7492EbbC1E7F2838Fc7191eDc031581d5712978A"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "and",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0x16"
//!           ],
//!           "caller": "0xC0Af3981f9C0dfcB8955Fea07a3e4F23806FAB51"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "or",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0x17"
//!           ],
//!           "caller": "0x8621Dd642245dF371b584b48c081e8863313A70d"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "xor",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0x18"
//!           ],
//!           "caller": "0xC328dE035c91B39efa07d2FE620813253C9B4Ec2"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "shl",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0x1b"
//!           ],
//!           "caller": "0xA11308e3B741227D41973DdB17534ceB27b8206f"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "shr",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0x1c"
//!           ],
//!           "caller": "0xc4Ff1b4565eE203fA12636e100Fe9C89Cd18Acb7"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "sar",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0x1d"
//!           ],
//!           "caller": "0x63a36aEa8570219476EF835f09024ACdEdfEE95A"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "keccak256",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0x20"
//!           ],
//!           "caller": "0xf7205066c153f7c88Dc3653eBc72b438884Ae109"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "calldatacopy",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0x37"
//!           ],
//!           "caller": "0xA8CE5C40c4aA9278DdEaA418e775985549960E7A"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x02"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "returndatacopy",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0x3e"
//!           ],
//!           "caller": "0x81F58F2194B0413806bF2CE8E1654bc855dC65a1"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x02"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "mstore",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0x52"
//!           ],
//!           "caller": "0xf0218008120201e66B65Fce4Df9035007E811228"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "mstore8",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0x53"
//!           ],
//!           "caller": "0x90f022E3ca8453F5E5765cd3054003b544526eec"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "sstore",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0x55"
//!           ],
//!           "caller": "0x1D1f873BA1DDf7915E6e26f93f5624B40efAefE2"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "log0",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0xa0"
//!           ],
//!           "caller": "0x0311afD3Bc2Ae250D5f9F2706BAE2eF4164d6912"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": []
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "log1",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0xa1"
//!           ],
//!           "caller": "0x5044a80bD3eff58302e638018534BbDA8896c48A"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x02",
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x00"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "log2",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0xa2"
//!           ],
//!           "caller": "0xFc32402667182d11B29fab5c5e323e80483e7800"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x02"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x03"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01",
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x00"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "log3",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0xa3"
//!           ],
//!           "caller": "0x25A71a07cecf1753ee65b00E0a3AAEf7e0F51c0F"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x02"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x03"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x04",
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x02",
//!               "0x01",
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x00"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "log4",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0xa4"
//!           ],
//!           "caller": "0x85E4E16Bd367E4259537269633DA9a6Aa4cf95a3"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x02"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x03"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x04"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x05"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x03",
//!               "0x02",
//!               "0x01",
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x00"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "create",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0xf0"
//!           ],
//!           "caller": "0xe6eF3a317f91A0a44eB097c8e68B49CcF9E63895"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x02",
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "call",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0xf1"
//!           ],
//!           "caller": "0x3d67BC03e6E562079BfC96Dd2bb52e6D7B78CafC"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x02"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x03"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x04"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x05"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x06",
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "return",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0xf3"
//!           ],
//!           "caller": "0xA8c8948fBacc197d233fd1B42055DAAEbe96937B"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "delegatecall",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0xf4"
//!           ],
//!           "caller": "0xe8F52E3fC52243040E884899f0bfA82Ae893ABe3"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x02"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x03"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x04"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x05"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "create2",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0xf5"
//!           ],
//!           "caller": "0x14a6E94f5c4F109d31ec0ff3cd002561b2525bcc"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x02"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x03"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "staticcall",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0xfa"
//!           ],
//!           "caller": "0x26A731e977cC6675FbA0755C284b3cB9B7047B3B"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x02"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x03"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x04"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x05"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "near_call_abi",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0xfb"
//!           ],
//!           "caller": "0x5144cF3Dd12B045CAF7b45569B3EBe5B4B52f92E"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "customfunction",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0xfe"
//!           ],
//!           "caller": "0x26a10A06D220Bd8A1b97845E7d554E7E401EAA48"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "nestedCustomFunctions",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0xff"
//!           ],
//!           "caller": "0x1734D9d6034707157326017B29237b913b9baD0F"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x01"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x02",
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x02"
//!             ]
//!           },
//!           {
//!             "topics": [
//!               "0x03",
//!               "0x00"
//!             ],
//!             "values": [
//!               "0x01"
//!             ]
//!           }
//!         ]
//!       }
//!     }
//!   ],
//!   "enable_eravm_extensions": true
//! }

object "Test" {
    code {
        {
            let size := datasize("Test_deployed")
            codecopy(0, dataoffset("Test_deployed"), size)
            return(0, size)
        }
    }

    object "Test_deployed" {
        code {
            {
                function lhs() -> cnt {
                    cnt := sload(0)
                    sstore(0, add(cnt, 1))
                    mstore(0, 1)
                    log1(0, 32, cnt)
                }
    
                function rhs() -> cnt {
                    cnt := sload(0)
                    sstore(0, add(cnt, 1))
                    mstore(0, 2)
                    log1(0, 32, cnt)
                }

                function lhs_2() -> cnt {
                    cnt := sload(0)
                    sstore(0, add(cnt, 1))
                    mstore(0, 1)
                    log2(0, 32, cnt, 0)
                }
    
                function rhs_2() -> cnt {
                    cnt := sload(0)
                    sstore(0, add(cnt, 1))
                    mstore(0, 2)
                    log2(0, 32, cnt, 0)
                }

                function customFunction(l, r) -> ret {
                    let x := sload(3)
                    sstore(3, add(x, l))

                    let y := sload(4)
                    sstore(4, add(y, r))

                    ret := add(x, y)
                }

                function ZKSYNC_NEAR_CALL_customFunction(abi_data, l, r) -> ret {
                    let x := sload(3)
                    sstore(3, add(x, l))

                    let y := sload(4)
                    sstore(4, add(y, r))

                    ret := add(x, y)
                }
                
                if gt(sload(0), 0) {
                    sstore(0, 0)
                }

                let opcode := calldataload(0)
                let ret
                switch opcode
                case 0x01 {
                    ret := add(lhs(), rhs())
                } 
                case 0x02 {
                    ret := mul(lhs(), rhs())
                }
                case 0x03 {
                    ret := sub(lhs(), rhs())
                }
                case 0x04 {
                    ret := div(lhs(), rhs())
                }
                case 0x05 {
                    ret := sdiv(lhs(), rhs())
                }
                case 0x06 {
                    ret := mod(lhs(), rhs())
                }
                case 0x07 {
                    ret := smod(lhs(), rhs())
                }
                case 0x08 {
                    ret := addmod(rhs(), lhs(), rhs())
                }
                case 0x09 {
                    ret := mulmod(rhs(), lhs(), rhs())
                }
                case 0x0a {
                    ret := exp(lhs(), rhs())
                }
                case 0x0b {
                    ret := signextend(lhs(), rhs())
                }
                case 0x10 {
                    ret := lt(lhs(), rhs())
                }
                case 0x11 {
                    ret := gt(lhs(), rhs())
                }
                case 0x12 {
                    ret := slt(lhs(), rhs())
                }
                case 0x13 {
                    ret := sgt(lhs(), rhs())
                }
                case 0x14 {
                    ret := eq(lhs(), rhs())
                }
                case 0x16 {
                    ret := and(lhs(), rhs())
                }
                case 0x17 {
                    ret := or(lhs(), rhs())
                }
                case 0x18 {
                    ret := xor(lhs(), rhs())
                }
                case 0x1b {
                    ret := shl(lhs(), rhs())
                }
                case 0x1c {
                    ret := shr(lhs(), rhs())
                }
                case 0x1d {
                    ret := sar(lhs(), rhs())
                }
                case 0x20 {
                    ret := keccak256(lhs(), rhs())
                }
                case 0x37 {
                    calldatacopy(rhs(), lhs(), rhs())
                }
                case 0x3e {
                    // Call the keccak256 precompiler to make returndatasize() > 0
                    pop(staticcall(gas(), 0x8010, 0, 0, 0, 32))
                    returndatacopy(rhs(), lhs(), rhs())
                }
                case 0x52 {
                    mstore(lhs(), rhs())
                }
                case 0x53 {
                    mstore8(lhs(), rhs())
                }
                case 0x55 {
                    sstore(lhs(), rhs())
                }
                case 0xa0 {
                    log0(lhs(), rhs())
                }
                case 0xa1 {
                    log1(rhs_2(), lhs(), rhs())
                }
                case 0xa2 {
                    log2(lhs(), rhs(), lhs(), rhs())
                }
                case 0xa3 {
                    log3(rhs_2(), lhs(), rhs(), lhs(), rhs())
                }
                case 0xa4 {
                    log4(lhs(), rhs(), lhs(), rhs(), lhs(), rhs())
                }
                case 0xf0 {
                    ret := create(rhs_2(), lhs(), rhs())
                }
                case 0xf1 {
                    ret := call(rhs_2(), lhs(), rhs(), lhs(), rhs(), lhs(), rhs())
                }
                case 0xf3 {
                    return(lhs(), rhs())
                }
                case 0xf4 {
                    ret := delegatecall(lhs(), rhs(), lhs(), rhs(), lhs(), rhs())
                }
                case 0xf5 {
                    ret := create2(lhs(), rhs(), lhs(), rhs())
                }
                case 0xfa {
                    ret := staticcall(lhs(), rhs(), lhs(), rhs(), lhs(), rhs())
                }
                case 0xfb {
                    ret := ZKSYNC_NEAR_CALL_customFunction(0, lhs(), rhs())
                }
                case 0xfe {
                    ret := customFunction(lhs(), rhs())
                }
                case 0xff {
                    ret := customFunction(customFunction(lhs_2(), rhs_2()), customFunction(lhs(), rhs()))
                }
                default {
                    revert(0, 0)
                }

                // To prevent compiler optimisations
                sstore(1, ret)
                return(0, 0)
            }
        }
    }
}
