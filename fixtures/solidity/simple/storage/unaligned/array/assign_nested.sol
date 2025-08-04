//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "storage": {
//!             "Test.address": [
//!               "0x100f0e0d0c0b0a090807060504030201"
//!             ]
//!           },
//!           "caller": "0x0787319540AD1352d0c8ae7e3F7bcE1Dd6D3B6F4"
//!         }
//!       ],
//!       "expected": [
//!         "126"
//!       ]
//!     }
//!   ]
//! }

contract Test {
    uint8[4][4] data;

    uint8 constant TEST = 42;

    function main(uint8 argument) public returns(uint8) {
        data[3][3] = argument;

        return argument + TEST + data[3][3];
    }
}
