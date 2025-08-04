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
//!               "0x656463"
//!             ]
//!           },
//!           "caller": "0x62AFE638cf9F5C948e27e4408D4b953905936483"
//!         }
//!       ],
//!       "expected": [
//!         "126"
//!       ]
//!     }
//!   ]
//! }

contract Test {
    uint8 constant TEST = 42;

    struct Data {
        uint8 value;
        uint8 next;
        uint8 last;
    }

    Data data;

    function main(uint8 argument) public returns(uint8) {
        data.next = argument;

        return argument + TEST + data.next;
    }
}
