contract Test {
    function f(uint256 x) public returns (uint256) {
        if (x > 10) return x + 10;
        else revert();
        return 2;
    }
}