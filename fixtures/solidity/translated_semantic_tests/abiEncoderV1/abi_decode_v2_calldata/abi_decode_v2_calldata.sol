pragma abicoder               v2;
contract C {
    struct S {
        uint256 a;
        uint256[] b;
    }
    function f(bytes calldata data) external pure returns (S memory) {
        return abi.decode(data, (S));
    }
}