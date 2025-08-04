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
//!               "0x04030201"
//!             ]
//!           },
//!           "caller": "0x290345728cEe1339Ff018AdB941F2bD9CfF1A897"
//!         }
//!       ],
//!       "expected": [
//!         "130"
//!       ]
//!     }
//!   ]
//! }

contract Test {
    uint8[4] data;

    uint8 constant TEST = 42;

    function main(uint8 argument) public returns(uint8) {
        data[3] += argument;

        return argument + TEST + data[3];
    }
}
