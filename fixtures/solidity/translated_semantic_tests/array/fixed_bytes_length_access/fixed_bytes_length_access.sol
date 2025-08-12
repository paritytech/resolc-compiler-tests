contract C {
    bytes1 a;
    function f(bytes32 x) public returns (uint256, uint256, uint256) {
        return (x.length, bytes16(uint128(2)).length, a.length + 7);
    }
}