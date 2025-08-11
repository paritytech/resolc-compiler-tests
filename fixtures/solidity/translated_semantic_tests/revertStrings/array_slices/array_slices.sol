contract C {
	function f(uint256 start, uint256 end, uint256[] calldata arr) external pure {
		arr[start:end];
	}
}