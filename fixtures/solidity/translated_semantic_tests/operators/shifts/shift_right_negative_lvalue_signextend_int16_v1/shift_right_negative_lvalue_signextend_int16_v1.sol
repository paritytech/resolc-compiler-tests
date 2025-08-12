pragma abicoder v1;
contract C {
    function f(int16 a, uint16 b) public returns (int16) {
        return a >> b;
    }
}