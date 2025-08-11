pragma abicoder               v2;
contract C {
  uint256[] s;
  function f(uint256[] calldata data) external returns (uint) {
    s = data;
    return s[0];
  }
}