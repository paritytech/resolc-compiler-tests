library L {
    function xor(bool a, bool b) internal pure returns (bool) {
        return a != b;
    }
}
contract C {
    using L for bool;
    function foo(bool a, bool b) public returns (bool) {
        return a.xor(b);
    }
}