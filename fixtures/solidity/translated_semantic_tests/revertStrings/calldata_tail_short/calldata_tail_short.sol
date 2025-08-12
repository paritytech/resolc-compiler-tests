pragma abicoder               v2;
contract C {
    function f(uint256[][] calldata x) external { x[0]; }
}