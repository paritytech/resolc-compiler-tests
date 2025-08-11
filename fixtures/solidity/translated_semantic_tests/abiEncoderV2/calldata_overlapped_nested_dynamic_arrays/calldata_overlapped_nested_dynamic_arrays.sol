pragma abicoder v2;
contract C {
    uint[] s;
    uint[2] n;
    function f_memory(uint[][] calldata a) public returns (uint[][] memory) {
        return a;
    }
    function f_encode(uint[][] calldata a) public returns (bytes memory) {
        return abi.encode(a);
    }
    function f_which(uint[][] calldata a, uint which) public returns (uint[] memory) {
        return a[which];
    }
}