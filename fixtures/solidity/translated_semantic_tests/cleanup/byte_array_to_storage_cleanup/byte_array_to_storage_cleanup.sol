contract C {
    event ev(uint[], uint);
    bytes public s;
    function h() external returns (bytes memory) {
        uint[] memory x = new uint[](2);
        emit ev(x, 0x21);
        bytes memory m = new bytes(63);
        s = m;
        s.push();
        return s;
    }
    function g() external returns (bytes memory) {
        bytes memory m = new bytes(63);
        assembly {
            mstore8(add(m, add(32, 63)), 0x42)
        }
        s = m;
        s.push();
        return s;
    }
    function f(bytes calldata c) external returns (bytes memory) {
        s = c;
        s.push();
        return s;
    }
}