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
//!           "caller": "0x610b1b0fc17894ef5a7ffecc1d0b266dfc1709eb"
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
