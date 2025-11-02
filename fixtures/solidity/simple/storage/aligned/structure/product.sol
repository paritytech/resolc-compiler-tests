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
//!           "caller": "0x0a0cd094625d9ed35d5fe4b17adce3dd5e9e8021"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0x0a0cd094625d9ed35d5fe4b17adce3dd5e9e8021"
//!         }
//!       ],
//!       "expected": [
//!         "15000"
//!       ]
//!     }
//!   ]
//! }

contract Test {
    struct Data {
        uint256 a;
        uint256 b;
        uint256 c;
        uint256 d;
    }

    Data data;

    constructor(uint256 a, uint256 b, uint256 c, uint256 d) {
        data.a = a;
        data.b = b;
        data.c = c;
        data.d = d;
    }

    function main(uint16 argument) public returns(uint16) {
        uint16 product = 1;
        product *= uint16(data.a);
        product *= uint16(data.b);
        product *= uint16(data.c);
        product *= uint16(data.d);
        return product;
    }
}
