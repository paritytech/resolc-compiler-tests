pragma abicoder               v2;
contract C {
    function f(int32 a, uint32 b) public returns (int32) {
        return a >> b;
    }
}