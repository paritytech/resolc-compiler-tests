//! {
//!   "cases": [
//!     {
//!       "name": "5_10",
//!       "inputs": [
//!         {
//!           "method": "deadbeef",
//!           "calldata": [
//!             "5",
//!             "10"
//!           ],
//!           "caller": "0xF0c170cBA8e7CdbbF9d367AAeB625ca1791b5E28"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "10_10",
//!       "inputs": [
//!         {
//!           "method": "deadbeef",
//!           "calldata": [
//!             "10",
//!             "10"
//!           ],
//!           "caller": "0xC7346965bfeCFa8A065D7C0A55FbCD15d8314E0b"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "15_10",
//!       "inputs": [
//!         {
//!           "method": "deadbeef",
//!           "calldata": [
//!             "15",
//!             "10"
//!           ],
//!           "caller": "0xE2c4A295D6A0DAA455a5d49F30B881E69165DA8f"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "-5_-10",
//!       "inputs": [
//!         {
//!           "method": "deadbeef",
//!           "calldata": [
//!             "-5",
//!             "-10"
//!           ],
//!           "caller": "0x296f8bbBde215aE40948c3dEb736C804c9fc64FF"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "-10_-10",
//!       "inputs": [
//!         {
//!           "method": "deadbeef",
//!           "calldata": [
//!             "-10",
//!             "-10"
//!           ],
//!           "caller": "0x2Cd69bf7f841CD6639794693fa24bAf4a92E30ba"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "-15_-10",
//!       "inputs": [
//!         {
//!           "method": "deadbeef",
//!           "calldata": [
//!             "-15",
//!             "-10"
//!           ],
//!           "caller": "0xc262C9561Ad1B8533c9D52E46ea66ae28E400159"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "-5_10",
//!       "inputs": [
//!         {
//!           "method": "deadbeef",
//!           "calldata": [
//!             "-5",
//!             "10"
//!           ],
//!           "caller": "0x50f7553F052883b5219A2268424C977eBC112CdF"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "5_-10",
//!       "inputs": [
//!         {
//!           "method": "deadbeef",
//!           "calldata": [
//!             "5",
//!             "-10"
//!           ],
//!           "caller": "0xb0b014105cFAB7b778D45605ce62F7AfA585F333"
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
            mstore(0, or(slt(calldataload(4), calldataload(36)), eq(calldataload(4), calldataload(36))))
            return(0, 32)
        }
    }
}
