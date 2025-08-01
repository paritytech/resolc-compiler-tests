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
//!           "caller": "0x236851975CA31599bCeaF5abb5B010aFe48EEA09"
//!         }
//!       ],
//!       "expected": [
//!         "126"
//!       ]
//!     }
//!   ]
//! }

contract Test {
    uint8[4] data;

    uint8 constant TEST = 42;

    function main(uint8 argument) public returns(uint8) {
        data[3] = argument;

        return argument + TEST + data[3];
    }
}
