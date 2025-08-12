contract C {
    function f(address a) public pure returns (bool) {
        return a == address(0);
    }
    function g() public pure returns (bool) {
        return bytes3("abc") == bytes4("abc");
    }
    function lt(uint a, uint b) public pure returns (bool) {
        return a < b;
    }
    function slt(int a, int b) public pure returns (bool) {
        return a < b;
    }
    function lte(uint a, uint b) public pure returns (bool) {
        return a <= b;
    }
    function slte(int a, int b) public pure returns (bool) {
        return a <= b;
    }
    function gt(uint a, uint b) public pure returns (bool) {
        return a > b;
    }
    function sgt(int a, int b) public pure returns (bool) {
        return a > b;
    }
    function gte(uint a, uint b) public pure returns (bool) {
        return a >= b;
    }
    function sgte(int a, int b) public pure returns (bool) {
        return a >= b;
    }
    function eq(uint a, uint b) public pure returns (bool) {
        return a == b;
    }
    function neq(uint a, uint b) public pure returns (bool) {
        return a != b;
    }
}