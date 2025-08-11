pragma abicoder v2;
contract C {
    struct S {
        uint8[] a;
        uint8[2] b;
    }
    S[][][] s1;
    S[][1][] s2;
    S[1][][1] s3;
    function test1(S[][][] memory _a) public returns (S[][] memory){
        s1.push();
        s1[0] = _a[0];
        return s1[0];
    }
    function test2(S[][1][] memory _a) public returns (S[][1] memory) {
        s2.push();
        s2[0] = _a[0];
        return s2[0];
    }
    function test3(S[1][][2] memory _a) public returns (S[1][] memory) {
        s3[0] = _a[1];
        return s3[0];
    }
}