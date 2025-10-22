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
//!           "caller": "0x63dc513cbabacd3140452351b2971b45d0a661f6"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0x63dc513cbabacd3140452351b2971b45d0a661f6"
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
        data.inner.next += argument;

        return argument + TEST + data.inner.next;
    }
}
