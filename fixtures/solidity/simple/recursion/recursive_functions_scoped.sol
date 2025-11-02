//! {
//!   "modes": [
//!     "Y",
//!     "E"
//!   ],
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "m0",
//!           "calldata": [],
//!           "caller": "0x9d84488dc7b7a4a27ce781d02c4ab2d2e6f1921b"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "110"
//!         ]
//!       }
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

// solc < 0.6.0 doesn't recognize `leave`
pragma solidity >=0.6.0;

contract Test {
  function m0() public pure returns (uint r) {
    assembly {
      {
        function fib(ya) -> yr {
          if lt(ya, 2) {
            yr := ya
            leave
          }
          yr := add(fib(sub(ya, 1)), fib(sub(ya, 2)))
        }
        r := fib(10)
      }

      {
        function fib(ya) -> yr {
          if lt(ya, 2) {
            yr := ya
            leave
          }
          yr := add(fib(sub(ya, 1)), fib(sub(ya, 2)))
        }
        r := add(r, fib(10))
      }

    }
  }
}
