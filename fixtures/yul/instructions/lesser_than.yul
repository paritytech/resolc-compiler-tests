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
//!           "caller": "0x04ab6D70F397E3DF5abDf1EAcD53a9De8F597c81"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0xb63bCAf2DF4b621E83caE95A1364b8a0ffb40998"
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
//!           "caller": "0x7b1C40590cF20c5794D122C24f22828a0f690d1a"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0xa01465EFCfe47D3c77656abBEb99935D1D1A7164"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0x17B1EE8a3345529f8a3669A5D6C5c228fa98C41E"
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
//!           "caller": "0x5f02A9FE1ca565dB2eeD8C33b5613833A3B40895"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0x6782d2661B70A8eFAbC4C8FfFE1a669BDfb13B8f"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0x101cA1E6e819Fe852B7C1BFF5cA9eE1820F9d86F"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
            mstore(0, slt(calldataload(4), calldataload(36)))
            return(0, 32)
        }
    }
}
