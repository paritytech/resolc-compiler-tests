contract C {
    function or(uint x) public returns (bool t, uint y) {
        t = (x == 0 || ((x = 8) > 0));
        y = x;
    }
    function and(uint x) public returns (bool t, uint y) {
        t = (x == 0 && ((x = 8) > 0));
        y = x;
    }
}