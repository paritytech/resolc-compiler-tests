//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "#deployer",
//!           "instance": "Test",
//!           "calldata": [
//!             "1",
//!             "2",
//!             "3",
//!             "4"
//!           ],
//!           "caller": "0xb6c49d958c74484d2f3bd1c1e6586a6b70ff955f"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0xb6c49d958c74484d2f3bd1c1e6586a6b70ff955f"
//!         }
//!       ],
//!       "expected": [
//!         "126"
//!       ]
//!     }
//!   ]
//! }

contract Test {
    uint256[4] data;

    uint8 constant TEST = 42;

    constructor(uint256 a, uint256 b, uint256 c, uint256 d) {
        data[0] = a;
        data[1] = b;
        data[2] = c;
        data[3] = d;
    }

    function main(uint8 argument) public returns(uint8) {
        data[3] = uint256(argument);

        return argument + TEST + uint8(data[3]);
    }
}
