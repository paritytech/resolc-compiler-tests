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
//!           "caller": "0x2fC525307C2AF545E7127C83dc265a49adea9721"
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
//!           "caller": "0x78B59e306274Dd4C0AF3195Fc89350a3dC407dE4"
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
//!           "caller": "0x514C1129d77BCE9cdBa3FA770d23D0b26558fdfc"
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
//!           "caller": "0x1d7CDB84d0d78835d70c815b719ADa278EAd78f3"
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
