contract B {
    function g() public {}
}
contract C is B {
    bytes4 constant s2 = B.g.selector;
    function f() external pure returns (bytes4) { return s2; }
}