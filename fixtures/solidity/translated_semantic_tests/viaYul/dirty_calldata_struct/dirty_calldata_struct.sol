pragma abicoder               v2;
contract C {
    struct S {
        uint16[] m;
    }
    function f(S calldata s) public pure returns (bool correct) {
        int8 x = int8(int16(s.m[0]));
        uint r;
        assembly {
            r := x
        }
        correct = r == 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff80;
    }
}