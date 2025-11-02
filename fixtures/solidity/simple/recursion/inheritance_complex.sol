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
//!           "caller": "0x2f884aae479deb75df16fa8dd4fbdae2554b163e"
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
//!           "caller": "0x51b730a076702766e783c2855c10dc325407702e"
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
//!           "caller": "0xd841073b9d11249dc8dee37c5feb8f91c332850b"
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
