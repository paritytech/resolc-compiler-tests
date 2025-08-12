==== Source: A.sol ====
contract A {
	function g(uint256 x) public view returns(uint256) { return x + 1; }
}
==== Source: B.sol ====
import "./A.sol";
contract B is A {
	function f(uint256 x) public view returns(uint256) { return x; }
}
// ----
// f(uint256): 1337 -> 1337
// g(uint256): 1337 -> 1338
