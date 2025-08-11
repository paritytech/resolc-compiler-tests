contract C {
	function create(uint256 len) public returns (uint256)
	{
		uint[] memory array = new uint[](len);
		return array.length;
	}
}