contract C {
    bytes s = "abcdefghabcdefghabcdefghabcdefg";
    function fromMemory(bytes memory m) public returns (bytes16) {
        assembly { mstore(m, 14) }
        return bytes16(m);
    }
    function fromCalldata(bytes calldata c) external returns (bytes16) {
        return bytes16(c);
    }
    function fromStorage() external returns (bytes32) {
        return bytes32(s);
    }
    function fromSlice(bytes calldata c) external returns (bytes8) {
        return bytes8(c[0:6]);
    }
}