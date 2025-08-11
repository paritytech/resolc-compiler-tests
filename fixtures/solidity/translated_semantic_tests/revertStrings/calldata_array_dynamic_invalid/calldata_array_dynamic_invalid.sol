pragma abicoder               v2;
contract C {
	function f(uint256[][] calldata a) external returns (uint) {
		return 42;
	}
}