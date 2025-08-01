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
//!           "caller": "0x998E8f02532E4460b04598d18bAC1b6f52b18Bb4"
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
//!           "caller": "0xCC33812859c5d71022afb4E90993158a93D2A2Db"
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
//!           "caller": "0xC34C2266b9a9d0d08aa1D0f664872C99D9dDd50b"
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
