function f() pure returns (uint) { return 1337; }
contract C {
  function g() public pure returns (uint) {
    return f();
  }
}