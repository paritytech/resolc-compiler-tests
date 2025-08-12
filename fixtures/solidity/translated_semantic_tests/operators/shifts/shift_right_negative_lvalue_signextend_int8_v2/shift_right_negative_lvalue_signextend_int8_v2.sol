pragma abicoder               v2;
contract C {
    function f(int8 a, uint8 b) public returns (int8) {
        return a >> b;
    }
}