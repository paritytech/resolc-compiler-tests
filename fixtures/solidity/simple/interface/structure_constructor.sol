//! {
//!   "cases": [
//!     {
//!       "name": "first",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0x9219839262aEF1EcBc7D6f887229A38a57069467"
//!         }
//!       ],
//!       "expected": [
//!         "42"
//!       ]
//!     },
//!     {
//!       "name": "second",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "64"
//!           ],
//!           "caller": "0x613d1e2eaE76Eed5C260Ef50C7548ca15917F3F9"
//!         }
//!       ],
//!       "expected": [
//!         "64"
//!       ]
//!     },
//!     {
//!       "name": "third",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "65535"
//!           ],
//!           "caller": "0xD0DAC836D7AA81516A271b00039cec294b825f14"
//!         }
//!       ],
//!       "expected": [
//!         "65535"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;
pragma experimental ABIEncoderV2;

contract Test {
    struct Data {
        uint256 a;
    }

    function _new(uint256 a) private pure returns(Data memory) {
        return Data(a);
    }

    function main(uint256 witness) public pure returns(uint256) {
        return _new(witness).a;
    }
}
