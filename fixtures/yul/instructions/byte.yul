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
//!           "caller": "0x0670B4C6d67ABaF7236D58f5fe7e392f9f182bc1"
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
//!           "caller": "0x87b21b7a84aBd4ffcfFDE7F9afB2C8D251F43F27"
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
//!           "caller": "0xca77DE12a35190931Da46Fd1f8fAD6F7285B206e"
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
//!           "caller": "0x26205aCE4DD462850d277e4fac2712a0BDe5cDE1"
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

