//! {
//!   "cases": [
//!     {
//!       "name": "positive",
//!       "inputs": [
//!         {
//!           "method": "deadbeef",
//!           "calldata": [
//!             "127"
//!           ],
//!           "caller": "0x738E4a747b885b69a354656Da8E51F0404f88EA8"
//!         }
//!       ],
//!       "expected": [
//!         "127"
//!       ]
//!     },
//!     {
//!       "name": "negative",
//!       "inputs": [
//!         {
//!           "method": "deadbeef",
//!           "calldata": [
//!             "255"
//!           ],
//!           "caller": "0x3AcC9396F5D56256e4C89b1Ca19880b21b076331"
//!         }
//!       ],
//!       "expected": [
//!         "-1"
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
            mstore(0, signextend(0, calldataload(4)))
            return(0, 32)
        }
    }
}
