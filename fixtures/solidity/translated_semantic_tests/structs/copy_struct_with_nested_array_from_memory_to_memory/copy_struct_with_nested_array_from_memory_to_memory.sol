pragma abicoder v2;
contract C {
    struct S {
        uint8[1] x;
        uint8[] y;
    }
    function test(S memory s) public returns (S memory r) {
        return r;
    }
}