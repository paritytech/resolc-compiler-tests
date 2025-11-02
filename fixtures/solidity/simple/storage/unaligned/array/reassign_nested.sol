//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "setStorage",
//!           "calldata": [
//!             "0x0000000000000000000000000000000000000000000000000000000004030201",
//!             "0x0000000000000000000000000000000000000000000000000000000008070605",
//!             "0x000000000000000000000000000000000000000000000000000000000c0b0a09",
//!             "0x00000000000000000000000000000000000000000000000000000000100f0e0d"
//!           ],
//!           "caller": "0xfb201ad019c3ff5e8422011573cc8de1f4b5c813"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0xfb201ad019c3ff5e8422011573cc8de1f4b5c813"
//!         }
//!       ],
//!       "expected": [
//!         "142"
//!       ]
//!     }
//!   ]
//! }

contract Test {
    uint8[4][4] data;

    uint8 constant TEST = 42;

    function setStorage(bytes32 a, bytes32 b, bytes32 c, bytes32 d) public {
        assembly {
            sstore(0, a)
            sstore(1, b)
            sstore(2, c)
            sstore(3, d)
        }
    }

    function main(uint8 argument) public returns(uint8) {
        data[3][3] += argument;

        return argument + TEST + data[3][3];
    }
}
