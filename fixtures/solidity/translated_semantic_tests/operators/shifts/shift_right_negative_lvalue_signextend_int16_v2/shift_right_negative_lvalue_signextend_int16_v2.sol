pragma abicoder               v2;
contract C {
    function f(int16 a, uint16 b) public returns (int16) {
        return a >> b;
    }
}