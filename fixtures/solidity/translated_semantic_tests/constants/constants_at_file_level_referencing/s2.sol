import "s1.sol";
uint256 constant c = uint8(a[0]) + 2;
contract C {
    function f() public returns (bytes memory) {
        return a;
    }
    function g() public returns (bytes memory) {
        return b;
    }
    function h() public returns (uint) {
        return c;
    }
    function i() public returns (bytes memory) {
        return fre();
    }
}