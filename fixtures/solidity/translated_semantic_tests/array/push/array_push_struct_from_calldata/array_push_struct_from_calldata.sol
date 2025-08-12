pragma abicoder v2;
contract c {
    struct S {
        uint16 a;
        uint16 b;
        uint16[3] c;
        uint16[] d;
    }
    S[] data;
    function test(S calldata c) public returns (uint16, uint16, uint16, uint16) {
        data.push(c);
        return (data[0].a, data[0].b, data[0].c[2], data[0].d[2]);
    }
}