contract C {
    function f(int256 _input) public returns (bytes32 hash) {
        uint24 b = 65536;
        uint c = 256;
        bytes32 input = bytes32(uint256(_input));
        return sha256(abi.encodePacked(uint8(8), input, b, input, c));
    }
}