import "./s1.sol";
contract D is C {
  function g() public pure virtual override returns (uint) {
    return super.g() + 1;
  }
}