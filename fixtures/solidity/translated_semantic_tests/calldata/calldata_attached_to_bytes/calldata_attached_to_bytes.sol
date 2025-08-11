pragma abicoder v2;
library L {
    function reverse(bytes calldata _b) internal pure returns (bytes1, bytes1) {
        return (_b[1], _b[0]);
    }
}
contract C {
    using L for bytes;
    function test(uint, bytes calldata _b, uint) external pure returns (bytes1, bytes1) {
        return _b.reverse();
    }
}