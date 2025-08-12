==== Source: A.sol ====
function inc(uint x) pure returns (uint) {
    return x + 1;
}

==== Source: B.sol ====
contract C {
	function f(uint x) public returns (uint) {
        return x.f() + x.inc();
    }
}
using {A.inc, f} for uint;
import {inc as f} from "./A.sol";
import "./A.sol" as A;
// ----
// f(uint256): 5 -> 12
// f(uint256): 10 -> 0x16
