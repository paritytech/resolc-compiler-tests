//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "setStorage",
//!           "calldata": [
//!             "0x0000000000000000000000000000000000000000000000000000000004030201"
//!           ],
//!           "caller": "0xEca26E60851b62CAD418325D0d9F8EE4863E6E9a"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0xEca26E60851b62CAD418325D0d9F8EE4863E6E9a"
//!         }
//!       ],
//!       "expected": [
//!         "130"
//!       ]
//!     }
//!   ]
//! }

contract Test {
    uint8[4] data;

    uint8 constant TEST = 42;

    function setStorage(bytes32 newStorage) public {
        assembly {
            sstore(0, newStorage)
        }
    }

    function main(uint8 argument) public returns(uint8) {
        data[3] += argument;

        return argument + TEST + data[3];
    }
}
