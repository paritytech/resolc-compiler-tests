//! {
//!   "cases": [
//!     {
//!       "name": "first",
//!       "inputs": [
//!         {
//!           "method": "deadbeef",
//!           "calldata": [
//!             "0x0102030405060708",
//!             "31"
//!           ],
//!           "caller": "0x8b7421B86d9fF375F13416FbB57956d63504fDE9"
//!         }
//!       ],
//!       "expected": [
//!         "0x08"
//!       ]
//!     },
//!     {
//!       "name": "middle",
//!       "inputs": [
//!         {
//!           "method": "deadbeef",
//!           "calldata": [
//!             "0x0102030405060708",
//!             "28"
//!           ],
//!           "caller": "0xD1A0Da208fDE814c052222FBE9a0acC5F077b7a0"
//!         }
//!       ],
//!       "expected": [
//!         "0x05"
//!       ]
//!     },
//!     {
//!       "name": "last",
//!       "inputs": [
//!         {
//!           "method": "deadbeef",
//!           "calldata": [
//!             "0x0102030405060708",
//!             "24"
//!           ],
//!           "caller": "0x15d74e175BC8274FA58780f874E00DD8Ff600Be3"
//!         }
//!       ],
//!       "expected": [
//!         "0x01"
//!       ]
//!     },
//!     {
//!       "name": "out_of_range",
//!       "inputs": [
//!         {
//!           "method": "deadbeef",
//!           "calldata": [
//!             "0x0102030405060708",
//!             "0"
//!           ],
//!           "caller": "0xCed1B0433c1347A750e2035a26ebdBd798992Fe7"
//!         }
//!       ],
//!       "expected": [
//!         "0x00"
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
                let value := calldataload(4)
                let index := calldataload(36)

                mstore(0, byte(index, value))
                return(0, 32)
            }
        }
    }
}

