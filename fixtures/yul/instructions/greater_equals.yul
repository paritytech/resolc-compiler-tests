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
//!           "caller": "0x3172231679d12eeC5AF9E61782FD9EF4823d9F4E"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0xdbC29273d4DE3D5645E308C7E629d28d4499B3d3"
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
//!           "caller": "0x74891a05aD4D7EC87C1cffE9bD00bb4E1382B586"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0x200051E1CDeD828E35D62667E717D031aC5607e5"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0x23952e6b6aE9A89FDe6204bE4312cc9E4fE0c59a"
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
//!           "caller": "0xb7e197565d51aA8a078B0B9860d9aC05eEf2F62c"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0xF3D302ACBcfA43a64E3f40564be2aE1df8262FA9"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0xE0E6582d8b28eCda1B9E8bC1742d25F7B6001E2e"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
            mstore(0, or(sgt(calldataload(4), calldataload(36)), eq(calldataload(4), calldataload(36))))
            return(0, 32)
        }
    }
}
