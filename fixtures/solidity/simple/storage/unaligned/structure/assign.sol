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
//!           "caller": "0x5C92D49Ca75e901719194ea45Dd4cC5ae841625d"
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
