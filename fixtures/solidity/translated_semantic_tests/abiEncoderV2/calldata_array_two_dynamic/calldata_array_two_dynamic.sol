pragma abicoder               v2;
contract C {
    function f(uint256[] calldata s1, uint256[] calldata s2, bool which) external pure returns (bytes memory) {
        if (which)
            return abi.encode(s1);
        else
            return abi.encode(s2);
    }
    function g(uint256[] calldata s1, uint256[] calldata s2, bool which) external view returns (bytes memory) {
        return this.f(s1, s2, which);
    }
}