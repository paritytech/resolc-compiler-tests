import "./A.sol";
contract B is A {
	function f(uint256 x) public view returns(uint256) { return x; }
}