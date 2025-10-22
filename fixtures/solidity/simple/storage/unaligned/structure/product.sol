//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "setStorage",
//!           "calldata": [
//!             "0x0000000000000000000000000000000000000000000000000005000a000f0014"
//!           ],
//!           "caller": "0xb27b419d90293f3720c5d3175ae0d47f23ec095d"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0xb27b419d90293f3720c5d3175ae0d47f23ec095d"
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
        uint16 a;
        uint16 b;
        uint16 c;
        uint16 d;
    }

    Data data;

    function setStorage(bytes32 newStorage) public {
        assembly {
            sstore(0, newStorage)
        }
    }

    function main(uint16 argument) public returns(uint16) {
        uint16 product = 1;
        product *= data.a;
        product *= data.b;
        product *= data.c;
        product *= data.d;
        return product;
    }
}
