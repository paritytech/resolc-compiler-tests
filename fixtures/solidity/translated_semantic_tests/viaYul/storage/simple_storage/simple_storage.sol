contract C {
    uint x;
    uint y;
    function setX(uint a) public returns (uint _x) {
        x = a;
        _x = x;
    }
    function setY(uint a) public returns (uint _y) {
        y = a;
        _y = y;
    }
}