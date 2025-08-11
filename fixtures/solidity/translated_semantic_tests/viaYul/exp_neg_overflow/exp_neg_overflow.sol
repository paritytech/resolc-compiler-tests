contract C {
    function f(int8 x, uint y) public returns (int) {
        return x**y;
    }
    function g(int256 x, uint y) public returns (int) {
        return x**y;
    }
}