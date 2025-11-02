//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "setStorage",
//!           "calldata": [
//!             "0x00000000000000000000000000000000100f0e0d0c0b0a090807060504030201"
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
//!         "126"
//!       ]
//!     }
//!   ]
//! }

contract Test {
    uint8[4][4] data;

    uint8 constant TEST = 42;

    function setStorage(bytes32 newStorage) public {
        assembly {
            sstore(0, newStorage)
        }
    }

    function main(uint8 argument) public returns(uint8) {
        data[3][3] = argument;

        return argument + TEST + data[3][3];
    }
}
