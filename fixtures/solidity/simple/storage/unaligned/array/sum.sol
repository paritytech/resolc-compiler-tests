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
//!               "0x050a0f14"
//!             ]
//!           },
//!           "caller": "0x9DC29d754240af7325749a8C4Af876ADba795251"
//!         }
//!       ],
//!       "expected": [
//!         "50"
//!       ]
//!     }
//!   ]
//! }

contract Test {
    uint8[4] data;

    function main(uint8 argument) public returns(uint8) {
        uint8 sum = 0;
        for (uint8 i = 0; i < 4; i++) {
            sum += data[i];
        }
        return sum;
    }
}
