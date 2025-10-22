//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "setStorage",
//!           "calldata": [
//!             "0x00000000000000000000000000000000000000000000000000000000050a0f14"
//!           ],
//!           "caller": "0x17439bbf9d9591377918042dafeee5735b971ac6"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0x17439bbf9d9591377918042dafeee5735b971ac6"
//!         }
//!       ],
//!       "expected": [
//!         "50"
//!       ]
//!     }
//!   ]
//! }

contract Test {
    uint8 constant TEST = 42;

    struct Data {
        uint8 a;
        uint8 b;
        uint8 c;
        uint8 d;
    }

    Data data;

    function setStorage(bytes32 newStorage) public {
        assembly {
            sstore(0, newStorage)
        }
    }

    function main(uint8 argument) public returns(uint8) {
        uint8 sum = 0;
        sum += data.a;
        sum += data.b;
        sum += data.c;
        sum += data.d;
        return sum;
    }
}
