//! {
//!   "cases": [
//!     {
//!       "name": "5_10",
//!       "inputs": [
//!         {
//!           "method": "deadbeef",
//!           "calldata": [
//!             "5",
//!             "10"
//!           ],
//!           "caller": "0x5Fcf51671e10F3601AF78a66076fE14B0CcC52A0"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "10_10",
//!       "inputs": [
//!         {
//!           "method": "deadbeef",
//!           "calldata": [
//!             "10",
//!             "10"
//!           ],
//!           "caller": "0x1dCF74D89cD07dC3F1Ad063b90E1A8CBc37d8cB3"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "15_10",
//!       "inputs": [
//!         {
//!           "method": "deadbeef",
//!           "calldata": [
//!             "15",
//!             "10"
//!           ],
//!           "caller": "0x3EfA17AAe19619Ea3a061a50a3dbD5A4657d1267"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "-5_-10",
//!       "inputs": [
//!         {
//!           "method": "deadbeef",
//!           "calldata": [
//!             "-5",
//!             "-10"
//!           ],
//!           "caller": "0x8402EC8e3B2b79699D5E0E6eB3Fc5c9481EF91F3"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "-10_-10",
//!       "inputs": [
//!         {
//!           "method": "deadbeef",
//!           "calldata": [
//!             "-10",
//!             "-10"
//!           ],
//!           "caller": "0x2b038e631A69845635BE49636709A1847cF71B80"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "-15_-10",
//!       "inputs": [
//!         {
//!           "method": "deadbeef",
//!           "calldata": [
//!             "-15",
//!             "-10"
//!           ],
//!           "caller": "0x6dfd1E212f5a8F83b2F02c03996E7F46ceEbBC41"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "-5_10",
//!       "inputs": [
//!         {
//!           "method": "deadbeef",
//!           "calldata": [
//!             "-5",
//!             "10"
//!           ],
//!           "caller": "0x0c2aD6ef709d998Bc78AE1F469AfFb34E12c672f"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "5_-10",
//!       "inputs": [
//!         {
//!           "method": "deadbeef",
//!           "calldata": [
//!             "5",
//!             "-10"
//!           ],
//!           "caller": "0xEB4160c9853A33a9d428Eb260c3397E6aCc2FF0e"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
            mstore(0, sgt(calldataload(4), calldataload(36)))
            return(0, 32)
        }
    }
}
