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
//!           "caller": "0x4963c83d796C54B2c35CF8282E8bB2B14A91b65E"
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
//!           "caller": "0x89a83923F013090E896fB503Ac2916d694B34aAC"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0x9C5212F134D7CE082bDBFb6f05355C6a805FEeC7"
//!         }
//!       ],
//!       "expected": [
//!         "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
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
//!           "caller": "0x8F76368D561Aa96666B3AD8647011D36f2BB4B23"
//!         }
//!       ],
//!       "expected": [
//!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
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
//!           "caller": "0x2707a4b5Fb0b3E456e26064E75617266D8073DCd"
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
//!           "caller": "0x5e4A1D572130375eE6606fD367Af987fCB45bf8B"
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
//!           "caller": "0xfd88427713d0e39E26Bc81ef5A95Efb72524a038"
//!         }
//!       ],
//!       "expected": [
//!         "0x29A44AC49A2C49A4AC81A482C81A482C81E6F9A1A21D59A1A21A1E661A1A1A21"
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
//!           "caller": "0xdd31C3E72F684fFD5b35160705e128b8A37f291e"
//!         }
//!       ],
//!       "expected": [
//!         "0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bytes_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "40",
//!             "0"
//!           ],
//!           "caller": "0xB39d3b47202a3df15F00802222CeEA203dF14709"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bytes_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "40",
//!             "1"
//!           ],
//!           "caller": "0x1FA25528155D5bF2222c9BBa951D5E676f360aFB"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bytes_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "40",
//!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
//!           ],
//!           "caller": "0x15e52c9a3b9ce7b4A0754be3F93375f89d4021DA"
//!         }
//!       ],
//!       "expected": [
//!         "0x00000000005348958934589349590349059034905903CDF343443AB34344343C"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bytes_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "40",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x331Da1891F5d94ABbaFC7F1Fa241ad8Ce8E0217e"
//!         }
//!       ],
//!       "expected": [
//!         "0x0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "171",
//!             "0"
//!           ],
//!           "caller": "0xAeE262EcEeE230C24aF93d54ec9013dE5aD08b48"
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
//!             "171",
//!             "1"
//!           ],
//!           "caller": "0x48e96c8aBe72eA9B9F6cd0F13d0671947C001d06"
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
//!             "171",
//!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
//!           ],
//!           "caller": "0x8a774161b1B33ea77d75637E21052363D5e3EF9e"
//!         }
//!       ],
//!       "expected": [
//!         "0xA6912B1268B12692B2069"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "171",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x62Ba8B743f9172d82A1B065325B572D06728585a"
//!         }
//!       ],
//!       "expected": [
//!         "0x0000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFF"
//!       ]
//!     },
//!     {
//!       "name": "255_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "255",
//!             "0"
//!           ],
//!           "caller": "0x948C9e45947bBA601e28036D710dFac378E13E8E"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "255_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "255",
//!             "1"
//!           ],
//!           "caller": "0xD5C507F45649c102E4a8436cDB517275Cf95fb0D"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "255_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "255",
//!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
//!           ],
//!           "caller": "0xD93998B5c66F9203b602454dc1Daf82F4c420770"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "255_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "255",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0xa09cbF6829821071EFa11679313AEa900fffFb84"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "256_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "256",
//!             "0"
//!           ],
//!           "caller": "0xF900a21d834c9c2B869e2F9362117a397c6424f9"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "256_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "256",
//!             "1"
//!           ],
//!           "caller": "0x9E1A8895B643DEB4d7f311ef0E3a14262797078f"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "256_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "256",
//!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
//!           ],
//!           "caller": "0x8A8bDA0422EBF2f6a379a7bE05468A21437Ce4D8"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "256_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "256",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0xD8475765C9b05e9Ae28604c4Ee67ffc502a0C2c2"
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
//!           "caller": "0xE7132aC952B396DFb60Ec472Ce12bc910187A7Ba"
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
//!           "caller": "0x4Bd35674bCC104fe2AD836f19a51d1406df79754"
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
//!           "caller": "0x4aD8e15A1D13Fb8295a7FC87C6C076B9C836Ee84"
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
//!           "caller": "0x0b821b224064245a7687C3dB00C51ed4dF078BF6"
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
//!           "caller": "0xc3f509c22BCd04C442bE73B44a5e12f6C61F0207"
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
//!           "caller": "0xa17ED3F353B388720F08325D9854Fe849F4fB6dA"
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
//!           "caller": "0xE324714e95037724250153a35F1Af91AA23630cd"
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
//!           "caller": "0x25Af861a609622D6aCdBbC30fEdCBF5aC2b126FC"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.21;

contract Test {
    function main(uint256 a, uint256 b) external pure returns(uint256 result) {
        assembly {
            result := shr(a, b)
        }
    }
}
