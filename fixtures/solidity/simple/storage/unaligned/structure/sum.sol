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
//!           "caller": "0xf9E50A1aC56de63B85Af698e4a8e7F8D94aC5894"
//!         }
//!       ],
//!       "expected": [
//!         "50"
//!       ]
//!     }
//!   ]
//! }

contract Test {
    uint8 constant TEST = 42;

    struct Data {
        uint8 a;
        uint8 b;
        uint8 c;
        uint8 d;
    }

    Data data;

    function main(uint8 argument) public returns(uint8) {
        uint8 sum = 0;
        sum += data.a;
        sum += data.b;
        sum += data.c;
        sum += data.d;
        return sum;
    }
}
