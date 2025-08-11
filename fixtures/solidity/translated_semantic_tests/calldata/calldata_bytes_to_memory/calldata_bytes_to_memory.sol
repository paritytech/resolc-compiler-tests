contract C {
  function f(bytes calldata data) external returns (bytes32) {
    return keccak256(bytes(data));
  }
}