pragma abicoder               v2;
contract C {
    function f(uint256[][] calldata a) external returns (uint256) {
        return 42;
    }
    function g(uint256[][] calldata a) external returns (uint256) {
        a[0];
        return 42;
    }
}