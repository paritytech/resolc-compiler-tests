contract C {
    function f(int256 input) public returns (bytes32 sha256hash) {
        return keccak256(abi.encodePacked(bytes32(uint256(input))));
    }
}