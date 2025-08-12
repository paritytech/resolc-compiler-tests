enum E {A, B}
struct S { uint x; }
type T is uint;
using L for E global;
using L for S global;
using L for T global;
library L {
    function f(E e) internal pure returns (uint) {
        return uint(e);
    }
    function f(S memory s) internal pure returns (uint) {
        return s.x;
    }
    function f(T t) internal pure returns (uint) {
        return T.unwrap(t);
    }
}