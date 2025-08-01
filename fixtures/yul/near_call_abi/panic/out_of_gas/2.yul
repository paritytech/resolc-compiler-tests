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
//!           "caller": "0x3577496a436bC4E85842e8061a287D88B1e73523"
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
//!           "caller": "0x04822880847fB03Ae0690B2EB6f39AD57459033f"
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
//!           "caller": "0x6B7f55F60B4c55eA1E8Ec52A07f17b3C4ca648DD"
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
//!           "caller": "0xfa07946Ad03ec1f5DDbf60B2FcB055720C626e7E"
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
//!           "caller": "0xD3ff90f011b0160D4d37067E037EABd7d2041663"
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
