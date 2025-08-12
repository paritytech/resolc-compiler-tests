==== Source: A.sol ====
contract D {
}
==== Source: B.sol ====
import "./A.sol" as M;

contract C {
    function f() public pure returns (bool) {
        bool flag;
        ((flag = true) ? M : M).D;
        return flag;
    }
}
// ----
// f() -> true
