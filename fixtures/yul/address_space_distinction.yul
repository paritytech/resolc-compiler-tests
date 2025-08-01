//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "deadbeef",
//!           "calldata": [
//!             "69"
//!           ],
//!           "caller": "0x6813Eb9362372EEF6200f3b1dbC3f819671cBA69"
//!         }
//!       ],
//!       "expected": [
//!         "42"
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
                mstore(256, 42)
                return(256, 32)
            }
        }
    }
}
