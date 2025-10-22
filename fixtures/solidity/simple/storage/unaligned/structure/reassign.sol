//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "setStorage",
//!           "calldata": [
//!             "0x0000000000000000000000000000000000000000000000000000000000656463"
//!           ],
//!           "caller": "0x53c85917d0b12787de827e875fa7291d267cdafe"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0x53c85917d0b12787de827e875fa7291d267cdafe"
//!         }
//!       ],
//!       "expected": [
//!         "226"
//!       ]
//!     }
//!   ]
//! }

contract Test {
    uint8 constant TEST = 42;

    struct Data {
        uint8 value;
        uint8 next;
        uint8 last;
    }

    Data data;

    function setStorage(bytes32 newStorage) public {
        assembly {
            sstore(0, newStorage)
        }
    }

    function main(uint8 argument) public returns(uint8) {
        data.next += argument;

        return argument + TEST + data.next;
    }
}
