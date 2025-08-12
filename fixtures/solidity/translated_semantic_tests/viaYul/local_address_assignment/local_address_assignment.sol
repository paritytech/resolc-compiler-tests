contract C {
    function f(address a) public pure returns (address x) {
        address b = a;
        x = b;
    }
}