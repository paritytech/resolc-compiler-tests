contract C {
    function f(int32 a, uint32 b) public returns (int256) {
        return a >> b;
    }
}