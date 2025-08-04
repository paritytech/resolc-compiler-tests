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
//!           "caller": "0x9455787155397eBa1440463e2bfe03C792ABDB92"
//!         }
//!       ],
//!       "expected": [
//!         "226"
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
        data.next += argument;

        return argument + TEST + data.next;
    }
}
