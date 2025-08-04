//! {
//!   "cases": [
//!     {
//!       "name": "zero",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "-1000",
//!             "0"
//!           ],
//!           "caller": "0xf65A974183BbaF810Fae3a15628E9F75ebBFA719"
//!         }
//!       ],
//!       "expected": [
//!         "-1000"
//!       ]
//!     },
//!     {
//!       "name": "one",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "-1000",
//!             "1"
//!           ],
//!           "caller": "0x652669A23ea17664004F6374C8628B88882945Ce"
//!         }
//!       ],
//!       "expected": [
//!         "-500"
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
                let offset := calldataload(32)

                mstore(0, sar(offset, value))
                return(0, 32)
            }
        }
    }
}

