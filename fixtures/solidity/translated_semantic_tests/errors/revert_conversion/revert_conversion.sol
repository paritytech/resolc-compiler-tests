error E(string a, uint[] b);
contract C {
    uint[] x;
    function f() public {
        x.push(7);
        revert E("abc", x);
    }
}