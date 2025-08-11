contract C {
    function f(uint a, uint b) public pure returns (uint x) {
        x = a / b;
    }
    function g(int8 a, int8 b) public pure returns (int8 x) {
        x = a / b;
    }
    function h(uint256 a, uint256 b) public pure returns (uint256 x) {
        x = a / b;
    }
}