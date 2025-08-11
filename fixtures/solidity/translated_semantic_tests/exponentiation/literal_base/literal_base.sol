contract test {
    function f(uint x) public pure returns (uint, int) {
        unchecked {
            uint a = 2 ** x;
            int b = -2 ** x;
            return (a, b);
        }
    }
}