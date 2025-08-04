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
//!               "20",
//!               "15",
//!               "10",
//!               "5"
//!             ]
//!           },
//!           "caller": "0x4bEeE050Be6228fb41d380A1C860810DcBf3b441"
//!         }
//!       ],
//!       "expected": [
//!         "50"
//!       ]
//!     }
//!   ]
//! }

contract Test {
    uint256[4] data;

    function main(uint8 argument) public returns(uint8) {
        uint8 sum = 0;
        for (uint8 i = 0; i < 4; i++) {
            sum += uint8(data[i]);
        }
        return sum;
    }
}
