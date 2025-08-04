//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [],
//!           "caller": "0x305795eC43bCf9C2ce3a6fC3F714F651d9CfC31b"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!           "0x0000001100000000000000000000000000000000000000000000000000000000"
//!         ],
//!         "exception": true
//!       }
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
                mstore(0, shl(224, 0x4E487B71))
                mstore(4, 0x11)
                revert(0, 0x24)
            }
        }
    }
}
