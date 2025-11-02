//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0xe79b8124a79e7889da839b0849cf0aab21730d28"
//!         }
//!       ],
//!       "expected": [
//!         "23"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

// Report https://linear.app/matterlabs/issue/CPR-1705/internalcompilererror-in-our-fork

pragma solidity >=0.6.0;

contract Base {
  uint ret;
  function f2() public { ret = 2; }
  function f3() public { ret = 3; }

  function g() public returns (uint) {
    ret = 1;
    try this.f2() {
    } catch {
      try this.f3() {
      } catch {}
    }
    return ret;
  }

  function h() public returns (uint) {
    ret = 1;
    try this.f2() {
      try this.f3() {
      } catch {}
    } catch {}
    return ret;
  }
}

contract Test is Base {
  function main() public returns (uint) {
    return g() * 10 + h();
  }
}
