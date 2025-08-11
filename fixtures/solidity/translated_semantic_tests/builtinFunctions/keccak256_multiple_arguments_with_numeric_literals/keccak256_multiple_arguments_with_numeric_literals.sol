contract c {
    function foo(uint256 a, uint16 b) public returns (bytes32 d) {
        d = keccak256(abi.encodePacked(a, b, uint8(145)));
    }
}