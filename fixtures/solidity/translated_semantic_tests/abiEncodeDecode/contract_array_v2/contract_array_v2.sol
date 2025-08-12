pragma abicoder               v2;
contract C {
  function f(bytes calldata x) public returns (C[] memory) {
    return abi.decode(x, (C[]));
  }
  function g() public returns (bytes memory) {
    C[] memory c = new C[](3);
    c[0] = C(address(0x42));
    c[1] = C(address(0x21));
    c[2] = C(address(0x23));
    return abi.encode(c);
  }
}