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
//!           "caller": "0x0A8cA8477a384251Bf3F99C1E5D97b48eF29f281"
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
        Inner inner;
    }

    struct Inner {
        uint8 value;
        uint8 next;
        uint8 last;
    }

    Data data;

    function main(uint8 argument) public returns(uint8) {
        data.inner.next = argument;

        return argument + TEST + data.inner.next;
    }
}
