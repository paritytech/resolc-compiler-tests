pragma abicoder v2;
contract C {
    function test1(uint8[][][] calldata _a) public returns (uint8[][] memory) {
        return _a[1];
    }
    function test2(uint8[][1][] calldata _a) public returns (uint8[][1] memory) {
        return _a[0];
    }
    function test3(uint8[2][][2] calldata _a) public returns (uint8[2][] memory) {
        return _a[0];
    }
    function test4(uint16[][] calldata _a) public returns (uint16[][] memory) {
        uint16[][][] memory tmp = new uint16[][][](2);
        tmp[1] = _a;
        return tmp[1];
    }
    function test5(uint32[][2] calldata _a) public returns (uint32[][2] memory) {
        uint32[][2][] memory tmp = new uint32[][2][](1);
        tmp[0] = _a;
        return tmp[0];
    }
    function test6(uint32[2][] calldata _a) public returns (uint32[2][] memory) {
        uint32[2][][] memory tmp = new uint32[2][][](1);
        tmp[0] = _a;
        return tmp[0];
    }
}