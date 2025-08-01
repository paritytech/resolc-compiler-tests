//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "#deployer",
//!           "instance": "Test",
//!           "calldata": [
//!             "99",
//!             "100",
//!             "101"
//!           ],
//!           "caller": "0xAe9dA0944F54f97a315Baa112F6A345836A714Da"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0xAe9dA0944F54f97a315Baa112F6A345836A714Da"
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

    constructor(uint256 value, uint256 next, uint256 last) {
        data.inner.value = value;
        data.inner.next = next;
        data.inner.last = last;
    }

    function main(uint8 argument) public returns(uint8) {
        data.inner.next += uint256(argument);

        return argument + TEST + uint8(data.inner.next);
    }
}
