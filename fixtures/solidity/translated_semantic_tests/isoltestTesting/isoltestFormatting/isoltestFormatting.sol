contract C {
    function f() public returns (uint[5] memory) {
        uint[5] memory a = [4, 11, 0x111, uint(3355443), 2222222222222222222];
        return a;
    }
    function g() public returns (uint[5] memory) {
        uint[5] memory a = [16, 256, 257, uint(0x333333), 0x1ed6eb565788e38e];
        return a;
    }
}