contract c {
    function foo(uint256 a, uint256 b, uint256 c) public returns (bytes32 d) {
        d = keccak256(abi.encodePacked(a, b, c));
    }
}