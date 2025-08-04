//! {
//!   "cases": [
//!     {
//!       "name": "fail",
//!       "inputs": [
//!         {
//!           "method": "g",
//!           "calldata": [],
//!           "expected": [
//!             "2"
//!           ],
//!           "caller": "0xd1b6E62AaD9f006783B8CD8aba6c26F7cf2ba77E"
//!         },
//!         {
//!           "method": "h",
//!           "calldata": [],
//!           "caller": "0xd1b6E62AaD9f006783B8CD8aba6c26F7cf2ba77E"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": ">=0.8",
//!           "return_data": [
//!             "0x4e487b7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000005100000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "exception": true
//!         },
//!         {
//!           "compiler_version": "<=0.7",
//!           "return_data": [],
//!           "exception": true
//!         }
//!       ]
//!     },
//!     {
//!       "name": "pass",
//!       "inputs": [
//!         {
//!           "method": "set",
//!           "calldata": [],
//!           "caller": "0x49c7225C4f941a07aA7bBb9fA16Ab67c45c80c36"
//!         },
//!         {
//!           "method": "h",
//!           "calldata": [],
//!           "expected": [
//!             "2"
//!           ],
//!           "caller": "0x49c7225C4f941a07aA7bBb9fA16Ab67c45c80c36"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "exception": false
//!       }
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

// solc < 0.5.1 runs into a "Function not found in member access" internal
// compiler error
pragma solidity >=0.5.1;

contract Test {
    function() returns (uint256) internal x;

    function set() public {
        Test.x = g;
    }

    function g() public pure returns (uint256) {
        return 2;
    }

    function h() public returns (uint256) {
        return Test.x();
    }
}

// ====
// compileToEwasm: also
// ----
// g() -> 2
// h() -> FAILURE, hex"4e487b71", 0x51
// set() ->
// h() -> 2
