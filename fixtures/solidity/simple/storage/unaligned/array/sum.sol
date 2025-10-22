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
//!           "caller": "0xf8f501e98daad5eeb6aa01389da307c71dd02f2d"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0xf8f501e98daad5eeb6aa01389da307c71dd02f2d"
//!         }
//!       ],
//!       "expected": [
//!         "50"
//!       ]
//!     }
//!   ]
//! }

contract Test {
    uint8[4] data;

    function setStorage(bytes32 newStorage) public {
        assembly {
            sstore(0, newStorage)
        }
    }

    function main(uint8 argument) public returns(uint8) {
        uint8 sum = 0;
        for (uint8 i = 0; i < 4; i++) {
            sum += data[i];
        }
        return sum;
    }
}
