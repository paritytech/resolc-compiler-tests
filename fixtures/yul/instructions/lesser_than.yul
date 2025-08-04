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
//!           "caller": "0xb7D9af8cD5A6B72e40C3168a7BFA686c5192df0c"
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
//!           "caller": "0xc5d4A50C0F53D63e018b716Ad30BAB834ef766e6"
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
//!           "caller": "0xd63eE9214D52E95f8e4Bb042E092e982E811341b"
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
//!           "caller": "0xE100f19D0D98DeC51Ce26cB67246995E851d3126"
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
//!           "caller": "0x94d519827C23CC3C83E46B69D47C76D26575B4eA"
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
//!           "caller": "0xdE0e652A678F1794b15dEbcA707CAddbe08bd719"
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
//!           "caller": "0xFeD179FBa411EA87efB3ff3828347A703eDd082C"
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
//!           "caller": "0xF96Acb059e22108Cd000062486984663F98cf9F9"
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
