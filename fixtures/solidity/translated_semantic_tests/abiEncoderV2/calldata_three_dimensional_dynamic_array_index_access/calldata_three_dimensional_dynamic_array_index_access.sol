pragma abicoder v2;
contract C {
    struct S { uint[] a; }
    function f(uint[][] calldata s, uint i, uint j) public pure returns (bytes memory) {
        return abi.encode(s[i][j]);
    }
    function g(uint[][][] calldata s, uint i, uint j, uint k) public pure returns (bytes memory) {
        return abi.encode(s[i][j][k]);
    }
    function h(uint[][][1] calldata s, uint i) public pure returns (bytes memory) {
        return abi.encode(s[0][i]);
    }
    function k(S[][] calldata s, uint i, uint j) public pure returns (bytes memory) {
        return abi.encode(s[i][j].a);
    }
    function l(S[2][2] calldata s, uint i, uint j) public pure returns (bytes memory) {
        return abi.encode(s[i][j].a);
    }
}