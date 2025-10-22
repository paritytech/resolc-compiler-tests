//! {
//!   "modes": [
//!     "Y",
//!     "E"
//!   ],
//!   "cases": [
//!     {
//!       "name": "f",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0xce868d5e6801d8286899f703d09cf0a9b15ed6dc"
//!         }
//!       ],
//!       "expected": [
//!         "10"
//!       ]
//!     }
//!   ]
//! }

pragma solidity >=0.4.12;

contract P0 {
  function f(uint a) public returns (uint) {
    if (a == 1)
      return 10;
    return f(a);
  }
}
contract Test is P0 {}
