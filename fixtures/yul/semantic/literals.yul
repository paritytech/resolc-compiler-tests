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
//!           "caller": "0xa5dfe354b3Fc30c5c3a8fFeFC8f9470D9177C334"
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
//!           "caller": "0xa1A625AE13b80A9c48b7C0331C83bc4541aC137f"
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
//!           "caller": "0xa33C9D26e1E33b84247dEFCA631c1d30FFc76F5d"
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
//!           "caller": "0xF9807a8719AE154E74591CB2d452797707faDF73"
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
//!           "caller": "0xA1bA6FC3eA0E89F0E79f89d9Aa0081d010571E4a"
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
//!           "caller": "0x366c20b40048556e5682e360997537c3715AcA0e"
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