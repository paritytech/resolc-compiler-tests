//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "setRow",
//!           "calldata": [
//!             "0",
//!             "1",
//!             "2",
//!             "3",
//!             "4"
//!           ],
//!           "caller": "0x24267fc6d8e2dffa56f86fd353ba0e7ef29c9310"
//!         },
//!         {
//!           "method": "setRow",
//!           "calldata": [
//!             "1",
//!             "5",
//!             "6",
//!             "7",
//!             "8"
//!           ],
//!           "caller": "0x24267fc6d8e2dffa56f86fd353ba0e7ef29c9310"
//!         },
//!         {
//!           "method": "setRow",
//!           "calldata": [
//!             "2",
//!             "9",
//!             "10",
//!             "11",
//!             "12"
//!           ],
//!           "caller": "0x24267fc6d8e2dffa56f86fd353ba0e7ef29c9310"
//!         },
//!         {
//!           "method": "setRow",
//!           "calldata": [
//!             "3",
//!             "13",
//!             "14",
//!             "15",
//!             "16"
//!           ],
//!           "caller": "0x24267fc6d8e2dffa56f86fd353ba0e7ef29c9310"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0x24267fc6d8e2dffa56f86fd353ba0e7ef29c9310"
//!         }
//!       ],
//!       "expected": [
//!         "126"
//!       ]
//!     }
//!   ]
//! }

contract Test {
    uint256[4][4] data;

    uint8 constant TEST = 42;

    function setRow(uint row, uint256[4] calldata values) public {
        data[row][0] = values[0];
        data[row][1] = values[1];
        data[row][2] = values[2];
        data[row][3] = values[3];
    }

    function main(uint8 argument) public returns(uint8) {
        data[3][3] = uint256(argument);

        return argument + TEST + uint8(data[3][3]);
    }
}
