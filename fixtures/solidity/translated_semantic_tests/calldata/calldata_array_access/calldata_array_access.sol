pragma abicoder               v2;
contract C {
    function f(uint256[] calldata x, uint256 i) external returns (uint256) {
        return x[i];
    }
    function f(uint256[][] calldata x, uint256 i, uint256 j) external returns (uint256) {
        return x[i][j];
    }
}