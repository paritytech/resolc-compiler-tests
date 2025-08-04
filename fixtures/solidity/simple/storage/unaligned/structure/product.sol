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
//!               "0x0005000a000f0014"
//!             ]
//!           },
//!           "caller": "0xcda8eB4D475017FbA650d21b888f7b7c8769b2b8"
//!         }
//!       ],
//!       "expected": [
//!         "15000"
//!       ]
//!     }
//!   ]
//! }

contract Test {
    struct Data {
        uint16 a;
        uint16 b;
        uint16 c;
        uint16 d;
    }

    Data data;

    function main(uint16 argument) public returns(uint16) {
        uint16 product = 1;
        product *= data.a;
        product *= data.b;
        product *= data.c;
        product *= data.d;
        return product;
    }
}
