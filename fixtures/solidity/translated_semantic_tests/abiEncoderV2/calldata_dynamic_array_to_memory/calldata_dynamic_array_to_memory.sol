pragma abicoder v2;
contract C {
    function f(uint[][] calldata a) public returns (uint[][] memory) {
        return a;
    }
    function g(uint[][][] calldata a) public returns (uint[][][] memory) {
        return a;
    }
    function h(uint[2][][] calldata a) public returns (uint[2][][] memory) {
        return a;
    }
}