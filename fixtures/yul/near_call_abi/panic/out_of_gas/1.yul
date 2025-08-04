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
//!           "calldata": [
//!             "500"
//!           ],
//!           "caller": "0x17107e4b8A6F77b7693c0C161e05021e7191Ad27"
//!         }
//!       ],
//!       "expected": []
//!     },
//!     {
//!       "name": "1000_gas",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "1000"
//!           ],
//!           "caller": "0x0Cc248DEa21D34667BCAa067170453f2FdBd974a"
//!         }
//!       ],
//!       "expected": []
//!     },
//!     {
//!       "name": "1500_gas",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "1500"
//!           ],
//!           "caller": "0x99301E381754690A92F52b77d92215f3E40358B9"
//!         }
//!       ],
//!       "expected": []
//!     },
//!     {
//!       "name": "2000_gas",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "2000"
//!           ],
//!           "caller": "0xd9CA74130E76FBd0bC8767730f49c6c0180Ba908"
//!         }
//!       ],
//!       "expected": []
//!     },
//!     {
//!       "name": "2500_gas",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "2500"
//!           ],
//!           "caller": "0x67fA509A94d3968FabDfcc2d467bC6a56994cACB"
//!         }
//!       ],
//!       "expected": []
//!     }
//!   ]
//! }

// A really basic test that only sets one memory cell to 1.
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
            let gas_to_pass := calldataload(0)

            function BOOTLOADER_FORMAL_ADDR() -> ret {
                ret := 0x0000000000000000000000000000000000008001
            }

            function ZKSYNC_NEAR_CALL_tryTmp(abi) {
                let tmp := balance(BOOTLOADER_FORMAL_ADDR())
                mstore(0, tmp)
            }

            function ZKSYNC_CATCH_NEAR_CALL() {
                mstore(0, 13)
            }

            ZKSYNC_NEAR_CALL_tryTmp(gas_to_pass)
        }
    }
}