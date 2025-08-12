pragma abicoder v2;
contract C {
    struct S {
        uint8[1] x;
        uint8[] y;
    }
    function test(S calldata s) public returns (S memory) {
        return s;
    }
}