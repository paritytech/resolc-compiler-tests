pragma abicoder v2;
contract C {
    struct S {
        uint8[] a;
        uint8[2] b;
    }
    S[][] s1;
    S[][1] s2;
    S[1][] s3;
    function test1(S[][] calldata _a) public returns (S[][] memory){
        s1 = _a;
        return s1;
    }
    function test2(S[][1] calldata _a) public returns (S[][1] memory) {
        s2 = _a;
        return s2;
    }
    function test3(S[1][] calldata _a) public returns (S[1][] memory) {
        s3 = _a;
        return s3;
    }
}