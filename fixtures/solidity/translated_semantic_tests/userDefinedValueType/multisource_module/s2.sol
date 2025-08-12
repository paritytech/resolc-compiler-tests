import "./s1.sol" as M;
contract C {
  function f(int x) public pure returns (M.MyInt) { return M.MyInt.wrap(x); }
  function g(M.MyInt x) public pure returns (int) { return M.MyInt.unwrap(x); }
}