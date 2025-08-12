pragma abicoder v1;
contract C {
    function f(uint256[] memory a, bytes calldata b) public returns (bytes memory) {
        return abi.encode(a, b);
    }
    function g(uint256[] memory a, bytes calldata b) external returns (bytes memory) {
        return f(a, b);
    }
}