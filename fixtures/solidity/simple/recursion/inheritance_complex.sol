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
//!           "caller": "0xE3BC336619C5CAF91e9B8b1DEF0Eb65C71B48F7d"
//!         }
//!       ],
//!       "expected": [
//!         "10"
//!       ]
//!     },
//!     {
//!       "name": "g",
//!       "inputs": [
//!         {
//!           "method": "g",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0xA1A5109d0e8EF810F2Ce545B00349972ce04c7Ee"
//!         }
//!       ],
//!       "expected": [
//!         "11"
//!       ]
//!     },
//!     {
//!       "name": "h",
//!       "inputs": [
//!         {
//!           "method": "h",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0xb70c87d3E1fDB754bf12Df4AD85F8DB6D94d6B5E"
//!         }
//!       ],
//!       "expected": [
//!         "12"
//!       ]
//!     }
//!   ]
//! }

pragma solidity >=0.4.12;

contract P2 {
  function h(uint a) public returns (uint) {
    if (a == 1)
      return 12;
    return h(a);
  }
}
contract P1 is P2 {
  function g(uint a) public returns (uint) {
    if (a == 1)
      return 11;
    return g(a);
  }
}
contract P0 is P1 {
  function f(uint a) public returns (uint) {
    if (a == 1)
      return 10;
    return f(a);
  }
}
contract Test is P0 {}
