//! {
//!   "cases": [
//!     {
//!       "name": "zero",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "-1000",
//!             "0"
//!           ],
//!           "caller": "0x92090bf29a3Ea122c5F26777E2803a8FD6F1134e"
//!         }
//!       ],
//!       "expected": [
//!         "-1000"
//!       ]
//!     },
//!     {
//!       "name": "one",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "-1000",
//!             "1"
//!           ],
//!           "caller": "0xcd5C11cfb324167f1D5BbfC8c81DDEa19E8575D1"
//!         }
//!       ],
//!       "expected": [
//!         "-500"
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
                let value := calldataload(0)
                let offset := calldataload(32)

                mstore(0, sar(offset, value))
                return(0, 32)
            }
        }
    }
}

