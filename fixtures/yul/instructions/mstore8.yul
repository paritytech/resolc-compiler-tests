//! {
//!   "cases": [
//!     {
//!       "name": "first",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0x0000000000000000000000000000000000000000000000000102030405060708",
//!             "0",
//!             "0x42"
//!           ],
//!           "caller": "0xe32DEAA35868aC84cde1dbE488Ea2293C326299f"
//!         }
//!       ],
//!       "expected": [
//!         "0x4200000000000000000000000000000000000000000000000102030405060708"
//!       ]
//!     },
//!     {
//!       "name": "middle",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0x0000000000000000000000000000000000000000000000000102030405060708",
//!             "3",
//!             "0x42"
//!           ],
//!           "caller": "0xcE8D17aB3Ab0cb160B340EB9ae869263EAB1d515"
//!         }
//!       ],
//!       "expected": [
//!         "0x0000004200000000000000000000000000000000000000000102030405060708"
//!       ]
//!     },
//!     {
//!       "name": "last",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0x0000000000000000000000000000000000000000000000000102030405060708",
//!             "7",
//!             "0x42"
//!           ],
//!           "caller": "0x596481c4e9b555661828CEeAF473518494535DdB"
//!         }
//!       ],
//!       "expected": [
//!         "0x0000000000000042000000000000000000000000000000000102030405060708"
//!       ]
//!     },
//!     {
//!       "name": "out_of_range",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0x0000000000000000000000000000000000000000000000000102030405060708",
//!             "31",
//!             "0x42"
//!           ],
//!           "caller": "0x34989f6c6aEfea2cC6b206FDccC42e04B8413318"
//!         }
//!       ],
//!       "expected": [
//!         "0x0000000000000000000000000000000000000000000000000102030405060742"
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
                let index := calldataload(32)
                let byte_value := calldataload(64)

                mstore(0, value)
                mstore8(index, byte_value)

                return(0, 32)
            }
        }
    }
}
