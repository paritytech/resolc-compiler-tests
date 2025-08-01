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
//!               "4"
//!             ]
//!           },
//!           "caller": "0x11f9A1f7BE354E0465e6Db2712e3d68b9CEDbbc8"
//!         }
//!       ],
//!       "expected": [
//!         "126"
//!       ]
//!     }
//!   ]
//! }

contract Test {
    uint256[4] data;

    uint8 constant TEST = 42;

    function main(uint8 argument) public returns(uint8) {
        data[3] = uint256(argument);

        return argument + TEST + uint8(data[3]);
    }
}
