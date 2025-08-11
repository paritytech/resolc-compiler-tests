pragma abicoder               v2;
contract C {
    function f(uint256[][2][] calldata x) external returns (uint256) {
        x[0];
        return 23;
    }
}