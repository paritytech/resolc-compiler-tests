==== Source: A.sol ====
function f(uint x) pure returns (uint) {
    return x + 2;
}
function g(uint x) pure returns (uint) {
    return x + 8;
}

==== Source: B.sol ====
import {f as g, g as f} from "./A.sol";

==== Source: C.sol ====
contract C {
	function test(uint x, uint y) public pure returns (uint, uint) {
        return (x.f(), y.g());
    }
}

using {M.g, M.f} for uint;

import "./B.sol" as M;

// ----
// test(uint256,uint256): 1, 1 -> 9, 3
