contract C {
	uint test1;
	uint test2;
	uint test3;
	uint test4;
	uint test5;
	uint test6;
	uint test7;
	mapping (string => uint) map;
	function set(string memory s, uint n, uint a) public returns (uint) {
		map[s] = 0;
		uint[] memory x = new uint[](n);
		return x[a];
	}
}