import "./s1.sol";
contract C {
  function foo() public pure returns (uint) {
    return f() - g() - h();
  }
}