pragma abicoder v2;
contract C {
    function f(bytes[] calldata c) external returns (bytes[] memory) {
        return c;
    }
}