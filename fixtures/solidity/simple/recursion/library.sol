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
//!           "caller": "0x0f77001cde0f2b8417d4fbdb675da417898a7503"
//!         }
//!       ],
//!       "expected": [
//!         "4"
//!       ]
//!     }
//!   ]
//! }

pragma solidity >=0.4.12;

library Foo {
  function x(uint a) internal returns (uint) {
    if (a == 0)
      return x(a);
    return 1;
  }
  function y(uint a) internal returns (uint) { return 2; }
  function z(uint a) internal returns (uint) { return z(a); }

  function p(function(uint) internal returns (uint) a) internal returns (uint) {
    return a(1);
  }
  function f(uint a) internal returns (uint) { return a + p(x) + p(y); }
  function g(uint a) internal returns (uint) { return p(z); }
}

contract Test {
  function f(uint a) public returns (uint) {
    return Foo.f(a);
  }
}
