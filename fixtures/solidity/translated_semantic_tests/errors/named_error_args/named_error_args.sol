error E(uint a, uint b);
contract C {
    function f() public pure {
        revert E({b: 7, a: 2});
    }
}