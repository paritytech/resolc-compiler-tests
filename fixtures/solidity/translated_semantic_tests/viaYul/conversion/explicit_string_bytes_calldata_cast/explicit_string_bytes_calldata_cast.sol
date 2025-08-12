// Triggered ICE before
contract C {
	function f(string calldata data) external pure returns(string memory) {
		bytes calldata test = bytes(data[:3]);
		return string(test);
	}
}