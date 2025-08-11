pragma abicoder v2;
struct S {
    uint128 p1;
    uint256[][2] a;
    uint32 p2;
}
struct S1 {
    uint128 u;
    S s;
}
library L {
    function f(S1 memory m, uint32 p) external returns(uint32, uint128, uint256, uint256, uint32) {
        return (p, m.s.p1, m.s.a[0][0], m.s.a[1][1], m.s.p2);
    }
}
contract C {
    function f(S1 calldata c, uint32 p) external returns(uint32, uint128, uint256, uint256, uint32) {
        return L.f(c, p);
    }
}