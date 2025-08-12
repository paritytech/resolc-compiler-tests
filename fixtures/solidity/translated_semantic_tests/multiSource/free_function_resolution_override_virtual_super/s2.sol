import "./s1.sol";
contract D is C {
  function g() public pure override returns (uint) {
    return super.g();
  }
}