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
//!           "caller": "0x84CaFcf42434cA8Bc66920A78DDCB01812bD0c63"
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
        uint256 value;
        uint256 next;
        uint256 last;
    }

    Data data;

    function main(uint8 argument) public returns(uint8) {
        data.inner.next = uint256(argument);

        return argument + TEST + uint8(data.inner.next);
    }
}
