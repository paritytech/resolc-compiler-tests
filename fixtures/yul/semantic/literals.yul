//! {
//!   "cases": [
//!     {
//!       "name": "decimal",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0x0D2292e3B3Cc1877Ef04b0Fe2e275d6385566ff1"
//!         }
//!       ],
//!       "expected": [
//!         "4024342343240230"
//!       ]
//!     },
//!     {
//!       "name": "hexadecimal",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0x964a93325E4fD45334c2F7C04801c07676AF9002"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "true",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "2"
//!           ],
//!           "caller": "0xCD10DEaFD199aD80eD6E70cab6670C50b9d90488"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "false",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "3"
//!           ],
//!           "caller": "0x3781e66fBc5b59EF9295fdC73637aFD39F706b0f"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "string",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "4"
//!           ],
//!           "caller": "0x94A6924E59603a1eA1035f07C08dcB4Bf0323954"
//!         }
//!       ],
//!       "expected": [
//!         "0x6a73646a736a646a6431323331325c2f2212e2888e0000000000000000000000"
//!       ]
//!     },
//!     {
//!       "name": "hex",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "5"
//!           ],
//!           "caller": "0xcB712112839DF1CB83902D18F6ACcF2286Dd8C29"
//!         }
//!       ],
//!       "expected": [
//!         "0x0012340000000000000000000000000000000000000000000000000000000000"
//!       ]
//!     }
//!   ]
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
                switch calldataload(0)
                // decimal
                case 0 {
                    mstore(0, 4024342343240230)
                }
                // hexadecimal
                case 1 {
                    mstore(0, 0x00000000000deadbeef)
                }
                // true
                case 2 {
                    mstore(0, true)
                }
                // false
                case 3 {
                    mstore(0, false)
                }
                // string
                case 4 {
                    mstore(0, "jsdjsjdjd\
12312\\/\"\x12\u220E")
                }
                // hex
                case 5 {
                    mstore(0, hex"001234")
                }
                return(0, 32)
            }
        }
    }
}