pragma abicoder v2;
contract C {
    struct S {
        uint8[1] x;
        uint8[] y;
    }
    S s;
    function test(S calldata src) public {
        s = src;
        require(s.x[0] == 3);
        require(s.y.length == 2);
        require(s.y[0] == 7);
        require(s.y[1] == 11);
    }
}