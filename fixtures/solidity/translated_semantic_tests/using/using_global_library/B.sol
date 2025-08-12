contract C {
    function f() public pure returns (T r1, T r2) {
        r1 = r1.inc().inc();
        r2 = r1.dec();
    }
}
import {T} from "./A.sol";