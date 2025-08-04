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
//!           "caller": "0xf7a7B2b18Dc75199b91b21ec9821a6ce587B406c"
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
//!           "caller": "0x988D71DAB7990d9F6c39741F4350b9b84A7d9f33"
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
