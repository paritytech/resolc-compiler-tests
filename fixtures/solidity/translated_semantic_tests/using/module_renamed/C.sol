contract C {
	function test(uint x, uint y) public pure returns (uint, uint) {
        return (x.f(), y.g());
    }
}
using {M.g, M.f} for uint;
import "./B.sol" as M;