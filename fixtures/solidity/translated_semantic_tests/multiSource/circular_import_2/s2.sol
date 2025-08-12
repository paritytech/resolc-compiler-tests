import {f as h} from "s1.sol";
function f() pure returns (uint) { return 2; }
function g() pure returns (uint) { return 4; }
contract C {
  function foo() public pure returns (uint) {
    return h() - f() - g();
  }
}