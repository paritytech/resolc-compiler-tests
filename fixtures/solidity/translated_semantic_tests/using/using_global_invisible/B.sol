contract C {
    function f() public pure returns (T r1) {
        r1 = r1.inc().inc();
    }
}
import {T} from "./A.sol";