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
//!           "caller": "0xed96741280ce1fd02789dccbce4e8ee2656ac552"
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
//!           "caller": "0xf2da1973de12ba35a2f25eff2359e7e5b140b19c"
//!         }
//!       ],
//!       "expected": [
//!         "12"
//!       ]
//!     }
//!   ]
//! }

// `virtual` and `override` were added in v0.6.0.
pragma solidity >=0.6.0;

contract P2 {
  function g(uint a) public returns (uint) {
    if (a == 1)
      return 12;
    return g(a);
  }
}
contract P1 is P2 {
  function f(uint a) public virtual returns (uint) {
    if (a == 1)
      return 101;
    return f(a);
  }
}
contract P0 is P1 {
  function f(uint a) public virtual override(P1) returns (uint) {
    if (a == 1)
      return 10;
    return f(a);
  }
}
contract Test is P0 {}
