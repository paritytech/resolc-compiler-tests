contract c {
    bytes data;
    function test_short() public returns (uint256 r) {
        assembly {
            sstore(data.slot, 0)
        }
        for (uint8 i = 0; i < 15; i++) {
            data.push(bytes1(i));
        }
        assembly {
            r := sload(data.slot)
        }
    }
    function test_long() public returns (uint256 r) {
        assembly {
            sstore(data.slot, 0)
        }
        for (uint8 i = 0; i < 33; i++) {
            data.push(bytes1(i));
        }
        assembly {
            r := sload(data.slot)
        }
    }
    function test_pop() public returns (uint256 r) {
        assembly {
            sstore(data.slot, 0)
        }
        for (uint8 i = 0; i < 32; i++) {
            data.push(bytes1(i));
        }
        data.pop();
        data.pop();
        assembly {
            r := sload(data.slot)
        }
    }
}