pragma abicoder v1;
contract C {
    function f(int32 a, uint32 b) public returns (int32) {
        return a >> b;
    }
}