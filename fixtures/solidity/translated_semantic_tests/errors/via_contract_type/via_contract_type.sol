contract A {
  error E(uint);
}
contract X {
  error E(string);
}
contract B is A {
  function f() public pure { revert E(1); }
  function g() public pure  { revert A.E(1); }
  function h() public pure { revert X.E("abc"); }
}