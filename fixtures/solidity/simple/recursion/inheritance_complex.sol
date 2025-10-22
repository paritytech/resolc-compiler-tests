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
//!           "caller": "0xd841073b9d11249dc8dee37c5feb8f91c332850b"
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
//!           "caller": "0x2986d340935e5467bae88af04b6ee1b28d4b9ea3"
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
//!           "caller": "0x15196e401b825c261cd5b8e7499f0a35b9312aab"
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
