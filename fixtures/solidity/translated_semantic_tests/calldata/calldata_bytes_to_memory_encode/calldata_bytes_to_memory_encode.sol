contract C {
  function f(bytes calldata data) external returns (bytes memory) {
    return abi.encode(bytes(data));
  }
}