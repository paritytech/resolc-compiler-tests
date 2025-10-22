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
//!           "caller": "0xb8c2b04a8b05215b0ca7c98f63b4ad655718ccc4"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0xb8c2b04a8b05215b0ca7c98f63b4ad655718ccc4"
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
