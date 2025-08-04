//! {
//!   "enable_eravm_extensions": true,
//!   "targets": [
//!     "eravm"
//!   ],
//!   "cases": [
//!     {
//!       "name": "500_gas",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [],
//!           "caller": "0x267C1894f9ccB42e1ED753Ea97977fb11beDbA67"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "1000_gas",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [],
//!           "caller": "0x943bA28a48C4B9444aEeF86B5c8a666452D9C1eC"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "1500_gas",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [],
//!           "caller": "0xc16eb05c2c8320e84Cb8e25C7b2cf7e46e6cF71f"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2000_gas",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [],
//!           "caller": "0xb69F043F11fd6CAC25a5c3369D4CA4b19eD88EEd"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "2500_gas",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [],
//!           "caller": "0x876A4D8c87158f6B4d19f64168FB6a496b5c04B1"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
            function ZKSYNC_NEAR_CALL_getBalance(abi) -> ret {
                ret := balance(0)
            }

            // Making sure that nearCalls never panic
            function ZKSYNC_CATCH_NEAR_CALL() {}

            for { let i := 1 } lt(i, 10000) { i := add(i, 1) } {
                // It is okay is the value is zero if the near call panics,
                // it is here to prevent optimizing out
                let balanceZero := ZKSYNC_NEAR_CALL_getBalance(i)
                mstore(0, balanceZero)
            }

            // Need to return. Otherwise, the compiler will optimize out
            // the mstore
            return(0, 32)
        }
    }
}
