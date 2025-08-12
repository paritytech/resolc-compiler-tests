contract C {
	function f(uint x) public returns (uint) {
        return x.f() + x.inc();
    }
}
using {A.inc, f} for uint;
import {inc as f} from "./A.sol";
import "./A.sol" as A;