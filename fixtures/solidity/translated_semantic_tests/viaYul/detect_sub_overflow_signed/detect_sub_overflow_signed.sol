contract C {
    function f(int a, int b) public pure returns (int x) {
        x = a - b;
    }
    function g(int8 a, int8 b) public pure returns (int8 x) {
        x = a - b;
    }
}