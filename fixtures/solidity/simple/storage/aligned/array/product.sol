//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "#deployer",
//!           "instance": "Test",
//!           "calldata": [
//!             "20",
//!             "15",
//!             "10",
//!             "5"
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
//!         "15000"
//!       ]
//!     }
//!   ]
//! }

contract Test {
    uint256[4] data;

    constructor(uint256 a, uint256 b, uint256 c, uint256 d) {
        data[0] = a;
        data[1] = b;
        data[2] = c;
        data[3] = d;
    }

    function main(uint16 argument) public returns(uint16) {
        uint16 product = 1;
        for (uint8 i = 0; i < 4; i++) {
            product *= uint16(data[i]);
        }
        return product;
    }
}
