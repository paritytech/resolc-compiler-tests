contract C {
    function f() public pure returns (uint a, uint b, uint c) {
        E e = E.B;
        a = e.f();
        S memory s;
        s.x = 7;
        b = s.f();
        T t = T.wrap(9);
        c = t.f();
    }
}
import {E, S, T} from "./A.sol";