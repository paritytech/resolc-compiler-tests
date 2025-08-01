//! {
//!   "targets": [
//!     "eravm"
//!   ],
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "deadbeef",
//!           "calldata": [],
//!           "caller": "0x87FCBE64187317c59a944Be5B9C5c830B9373730"
//!         }
//!       ],
//!       "expected": [
//!         "555",
//!         "666",
//!         "0x20"
//!       ]
//!     }
//!   ],
//!   "enable_eravm_extensions": true
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
                let gate := calldataload(0)
                switch gate
                case 1 {
                    mstore(0, 42)
                    return(0, 32)
                }
                case 2 {
                    mstore(0, 555)
                    mstore(32, 666)
                    return(0, 64)
                }
                default {}

                mstore(0, 1)
                pop(staticcall(gas(), address(), 0, 32, 0, 0))
                pop(staticcall(0xFFFF, 0xFFEA, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF))

                mstore(0, 2)
                pop(staticcall(gas(), address(), 0, 32, 0, 64))
                let previous_return_data_size := staticcall(0xFFFF, 0xFFE2, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF)
                mstore(64, previous_return_data_size)

                return(0, 96)
            }
        }
    }
}
