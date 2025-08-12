import "./s1.sol" as S;
import "./s2.sol" as T;
import "./s1.sol";
contract C {
  function x() public pure {
    revert E(1);
  }
  function y() public pure {
    revert S.E(2);
  }
  function z() public pure {
    revert T.S.E(3);
  }
}