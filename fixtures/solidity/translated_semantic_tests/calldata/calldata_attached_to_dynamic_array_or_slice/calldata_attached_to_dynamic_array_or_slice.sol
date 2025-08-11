pragma abicoder v2;
library L {
    function reverse(uint[] calldata _a) internal pure returns (uint, uint) {
        return (_a[1], _a[0]);
    }
}
contract C {
    using L for *;
    function testArray(uint, uint[] calldata _a, uint) external pure returns (uint, uint) {
        return _a.reverse();
    }
    function testSlice(uint, uint[] calldata _a, uint) external pure returns (uint, uint) {
        return _a[:].reverse();
    }
}