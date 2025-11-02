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
//!           "caller": "0x9a39bb17e4f1709e691fcb1588d311aec7e50932"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0x9a39bb17e4f1709e691fcb1588d311aec7e50932"
//!         }
//!       ],
//!       "expected": [
//!         "126"
//!       ]
//!     }
//!   ]
//! }

contract Test {
    uint8 constant TEST = 42;

    struct Data {
        Inner inner;
    }

    struct Inner {
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
        data.inner.next = argument;

        return argument + TEST + data.inner.next;
    }
}
