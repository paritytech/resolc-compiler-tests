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
//!               "99",
//!               "100",
//!               "101"
//!             ]
//!           },
//!           "caller": "0xAaaf4A4fB587090C2e30817f5D9715470eb8ea3f"
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
        Inner inner;
    }

    struct Inner {
        uint256 value;
        uint256 next;
        uint256 last;
    }

    Data data;

    function main(uint8 argument) public returns(uint8) {
        data.inner.next += uint256(argument);

        return argument + TEST + uint8(data.inner.next);
    }
}
