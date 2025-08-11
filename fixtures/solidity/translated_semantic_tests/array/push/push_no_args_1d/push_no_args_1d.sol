contract C {
	uint[] array;
	function f() public returns (uint) {
		uint y = array.push();
		return y;
	}
	function lv(uint value) public {
		array.push() = value;
	}
	function a(uint index) public view returns (uint) {
		return array[index];
	}
	function l() public view returns (uint) {
		return array.length;
	}
}