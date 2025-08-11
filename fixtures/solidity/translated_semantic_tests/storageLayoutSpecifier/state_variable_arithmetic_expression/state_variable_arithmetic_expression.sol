contract C layout at 7 {
    uint public x;
    uint public y;
    uint public z;
    function f(uint a) public returns (uint) {
        x = x + a;
        y = y + x;
        z = y - 2;
        return z;
    }
}