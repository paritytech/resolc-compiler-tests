//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x353df3c4228c41780f4c81061c11234c50319541"
//!         }
//!       ],
//!       "expected": [
//!         "0x60",
//!         "0x00"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract Qux {}

contract Bar {
    function returnsSomething() public pure returns (bytes memory) {
        return ("this is returned");
    }
}

contract Test {
    Bar bar;

    constructor() {
        bar = new Bar();
    }

    function main() public returns (uint256 returnsize1, uint256 returnsize2) {
        address(bar).call(abi.encodeWithSelector(Bar.returnsSomething.selector));
        assembly {
            returnsize1 := returndatasize()
        }

        new Qux();

        assembly {
            returnsize2 := returndatasize()
        }
    }
}