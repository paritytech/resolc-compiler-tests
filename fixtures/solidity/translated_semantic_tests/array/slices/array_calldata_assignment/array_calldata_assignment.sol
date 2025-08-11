contract C {
    function f(uint256[] calldata x, uint256[] calldata y, uint256 i) external returns (uint256) {
        x = y;
        return x[i];
    }
}