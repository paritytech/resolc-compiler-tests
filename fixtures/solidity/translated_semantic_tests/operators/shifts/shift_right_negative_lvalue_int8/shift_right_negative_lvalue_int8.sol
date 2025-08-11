contract C {
    function f(int8 a, uint8 b) public returns (int256) {
        return a >> b;
    }
}