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
//!           "caller": "0x74460726ac889490a43f31b0830159f338754643"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0x74460726ac889490a43f31b0830159f338754643"
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
