//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             ""
//!           ],
//!           "caller": "0x07035e3c6Cc3e2Ed94d913729Cba9775985542ae"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "12",
//!               "13"
//!             ]
//!           }
//!         ]
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
                mstore(0, 12)
                mstore(32, 13)

                log0(0, 64)

                return(0, 0)
            }
        }
    }
}
