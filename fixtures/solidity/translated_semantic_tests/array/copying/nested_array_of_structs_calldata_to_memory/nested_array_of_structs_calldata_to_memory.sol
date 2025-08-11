pragma abicoder v2;
contract C {
    struct S {
        uint8 x;
        uint8 y;
    }
    function test1(S[1][2] calldata a) public returns (S[1][2] memory) {
        return a;
    }
    function test2(S[1][] calldata a) public returns (S[1][] memory) {
        return a;
    }
    function test3(S[][2] calldata a) public returns (S[][2] memory) {
        return a;
    }
}