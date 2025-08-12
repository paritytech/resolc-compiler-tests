pragma abicoder v2;
contract C {
    struct S {
        uint8 x;
        uint8 y;
    }
    function test1(S[1][2] memory a) public returns (S[1][2] memory r) {
        r = a;
    }
    function test2(S[1][] memory a) public returns (S[1][] memory r) {
        r = a;
    }
    function test3(S[][2] memory a) public returns (S[][2] memory r) {
        r = a;
    }
}