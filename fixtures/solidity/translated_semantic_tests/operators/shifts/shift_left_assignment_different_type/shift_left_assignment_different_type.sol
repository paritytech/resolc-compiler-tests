contract C {
    function f(uint256 a, uint8 b) public returns (uint256) {
        a <<= b;
        return a;
    }
}