pragma abicoder v2;
contract C
{
	function f() public pure returns (uint, bytes1, bytes1) {
		bytes memory encoded = abi.encodePacked("\\\\");
		return (encoded.length, encoded[0], encoded[1]);
	}
}