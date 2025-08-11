contract C {
	function f() public {}
	function g() public {}
	function h(bool c) public returns (bytes4) {
		return (c ? this.f : this.g).selector;
	}
}