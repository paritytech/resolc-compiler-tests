//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "deadbeef",
//!           "calldata": [
//!             "127",
//!             "-3"
//!           ],
//!           "caller": "0x78ba07557dD19fc35C7CE7FA2728d7207D7c1db5"
//!         }
//!       ],
//!       "expected": [
//!         "-42"
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
                mstore(256, sdiv(calldataload(4), calldataload(36)))
                return(256, 32)
            }
        }
    }
}
