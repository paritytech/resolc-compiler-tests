contract C {
    function f(uint a, uint b) public pure returns (uint x) {
        x = a - b;
    }
    function g(uint8 a, uint8 b) public pure returns (uint8 x) {
        x = a - b;
    }
}