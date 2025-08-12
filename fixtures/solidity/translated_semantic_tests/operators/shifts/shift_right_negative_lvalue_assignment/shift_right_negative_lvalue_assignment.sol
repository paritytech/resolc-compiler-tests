contract C {
    function f(int256 a, uint256 b) public returns (int256) {
        a >>= b;
        return a;
    }
}