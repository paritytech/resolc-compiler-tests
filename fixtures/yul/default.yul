//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "deadbeef",
//!           "calldata": [],
//!           "caller": "0xd41c057fd1c78805AAC12B0A94a405c0461A6FBb"
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
                mstore(0, 42)
                return(0, 32)
            }
        }
    }
}
