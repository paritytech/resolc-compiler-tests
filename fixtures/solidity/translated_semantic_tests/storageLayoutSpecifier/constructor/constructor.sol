contract A {
    uint public x;
}
contract B is A {
    int8 public y;
}
contract C is B layout at 7 {
    uint32 public z;
    constructor(uint _x, int8 _y, uint32 _z) {
        x = _x + 1;
        y = _y + 2;
        z = _z + 3;
    }
}