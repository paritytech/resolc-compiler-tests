contract C {
	uint constant x = 1 gwei;
	function f() public view returns(uint) { return x; }
}