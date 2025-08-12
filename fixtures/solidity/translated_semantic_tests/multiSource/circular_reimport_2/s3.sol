import "./s2.sol";
contract C {
  function foo() public pure returns (uint) {
    return 10000 + f() - g() - h();
  }
}