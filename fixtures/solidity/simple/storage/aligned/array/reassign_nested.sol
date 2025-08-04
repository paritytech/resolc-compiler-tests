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
//!               "1",
//!               "2",
//!               "3",
//!               "4",
//!               "5",
//!               "6",
//!               "7",
//!               "8",
//!               "9",
//!               "10",
//!               "11",
//!               "12",
//!               "13",
//!               "14",
//!               "15",
//!               "16"
//!             ]
//!           },
//!           "caller": "0x6857cc3b9C08DCBc7a33841cCbDF0E2A9886dcBf"
//!         }
//!       ],
//!       "expected": [
//!         "142"
//!       ]
//!     }
//!   ]
//! }

contract Test {
    uint256[4][4] data;

    uint8 constant TEST = 42;

    function main(uint8 argument) public returns(uint8) {
        data[3][3] += uint256(argument);

        return argument + TEST + uint8(data[3][3]);
    }
}
