contract C {
    function f(int256 input) public returns (bytes32 sha256hash) {
        return sha256(abi.encodePacked(bytes32(uint256(input))));
    }
}