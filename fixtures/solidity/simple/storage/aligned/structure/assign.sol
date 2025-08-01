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
//!           "caller": "0x0D169Dcf76a53c844cf9Aaa5BbAa762Ac1ee5E95"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0x0D169Dcf76a53c844cf9Aaa5BbAa762Ac1ee5E95"
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
        uint256 value;
        uint256 next;
        uint256 last;
    }

    Data data;

    constructor(uint256 value, uint256 next, uint256 last) {
        data.value = value;
        data.next = next;
        data.last = last;
    }

    function main(uint8 argument) public returns(uint8) {
        data.next = uint256(argument);

        return argument + TEST + uint8(data.next);
    }
}
