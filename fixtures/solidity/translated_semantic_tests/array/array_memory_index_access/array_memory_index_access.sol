contract C {
	function index(uint256 len) public returns (bool)
	{
		uint[] memory array = new uint[](len);
		for (uint256 i = 0; i < len; i++)
			array[i] = i + 1;
		for (uint256 i = 0; i < len; i++)
			require(array[i] == i + 1, "Unexpected value in array!");
		return array.length == len;
	}
	function accessIndex(uint256 len, int256 idx) public returns (uint256)
	{
		uint[] memory array = new uint[](len);
		for (uint256 i = 0; i < len; i++)
			array[i] = i + 1;
		return array[uint256(idx)];
	}
}