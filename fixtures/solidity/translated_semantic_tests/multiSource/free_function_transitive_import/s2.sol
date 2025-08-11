import "s1.sol";
contract D is C {
  function h() public pure returns (uint) {
    return g();
  }
}