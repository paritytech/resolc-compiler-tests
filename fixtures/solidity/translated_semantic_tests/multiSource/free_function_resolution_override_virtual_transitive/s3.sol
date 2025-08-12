import "./s2.sol";
contract E is D {
  function g() public pure override returns (uint) {
    return super.g() + 1;
  }
}