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
//!           "caller": "0xea5893446B6a7EC50Cd4b21a0Ff6E709FFFd9d82"
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
//!           "caller": "0xEaCc9391dD641b616B4eC3250E12c4Fd133b4739"
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
//!           "caller": "0xF9Cdb33d8cbe0b164aE3005F949Ac1bE853f12f9"
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
//!           "caller": "0x15CE2934Ef8877b7F43A0Bbc504960b71b64376a"
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
//!           "caller": "0x18D813Ec90d14a5A2B75aC4462A9f005e791d0F0"
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
//!           "caller": "0x150E8C64a5D4315DF3d4f19aB7e4f258B876e623"
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
//!           "caller": "0x18d4F050d987e7b29CacdA5D15305cbc0900ef2e"
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
//!           "caller": "0xA91521E3148f1E24810d979224c5245fF3DC11Fa"
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
//!           "caller": "0x03FF9Fd36D3e27a805097A6c65C662997F7118FF"
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
//!           "caller": "0xebC29C6E6Be91FdF6bE11583f526649D0fF40a05"
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
//!           "caller": "0x320A98a8196628865f57689Ae4eD49C2ee0d0C0E"
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
//!           "caller": "0xC93942fcd40d914a04326D5D2A04373193dB59AB"
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
//!           "caller": "0x3780b48C00562EBD3c5ca1668f0C8f152481B40C"
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
//!           "caller": "0x253a1942a02201412443657a5B407630614AAFdB"
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
//!           "caller": "0xF544be7E2a34a2DdF2082950e003e4feC5FF9aB8"
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
//!           "caller": "0x0791ED4f925Cc0414f9B66f5031F162944A7316E"
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
//!           "caller": "0xB7BcCD57eF597458Bf6Eb3eB7e51D68783459E6b"
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
//!           "caller": "0xE1c0965B5be856158F681A200Be7e3E252c4e430"
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
//!           "caller": "0x4C8f894cd948E0A1c126B6d38Aca676f2380d2bc"
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
//!           "caller": "0xa3D4Bf5d0C0B06489896869933a12F811B6cB69b"
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
//!           "caller": "0x46E4A426F1b2744a346d77ea9dF22439F6eca560"
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
//!           "caller": "0x8d43b46837759c52eE0F6B25aAd71C3329165cB7"
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
//!           "caller": "0x43e9d71993f0C28caCB0be41bD5F89920abED1b0"
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
//!           "caller": "0x76f35E4CFfdaaE83B45924B8B153463401f3B529"
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
//!           "caller": "0x5EB39F5129d7228b12c892ed47aa9B739C099941"
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
//!           "caller": "0xeE0DA1D601f7A6d05D78FccB5A01Ea4643C6D7E0"
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
//!           "caller": "0xd9Cc85162D17873a994Ea3302D1e1FE73BED7722"
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
//!           "caller": "0x6bF697677B63c1C0F752265fE61C6eAb4744Be54"
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
//!           "caller": "0xC8F72B29fCAdb9BF6F8282086244FcAeb6f44fe2"
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
//!           "caller": "0x374be380125A79A1Ce7c3A1c2b53489bfe74034B"
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
//!           "caller": "0xb8D3d2e414fEf116030c9e828176c5E2BFA5FD1a"
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
//!           "caller": "0xEE2C4904BdcDe276ecc689950F1ffAd259587E83"
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
//!           "caller": "0x252722Ccb8537877ac1fCB785e3Bf16D6f518152"
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
//!           "caller": "0xf3E066261326083263A681F01aC6a529D08bd660"
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
//!           "caller": "0x0B25d37992c45e70a879E86BbF9aBb209bcbE5a6"
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
//!           "caller": "0x516353E9A53741599D4B5E87E87D70882b3f1e9a"
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
//!           "caller": "0x73b98a84F325023C2B9EB7bfA66acd30Ae2B0E05"
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
//!           "caller": "0x674003BdBDf267af411a7352832F52dc40CfBC87"
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
//!           "caller": "0x2584da8573ef041D0bDE5D6A2C9Ed60964bc6795"
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
//!           "caller": "0xB83efA3751AFAE0ffaA01A55aF0BA754e84cb42c"
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
//!           "caller": "0xFF46a5b1bd1f08A033bD7cb0e96D329BEd961FB4"
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
//!           "caller": "0x696aF2F101d8Fd2A4DaaF55Ebc4D3B040B94d486"
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
