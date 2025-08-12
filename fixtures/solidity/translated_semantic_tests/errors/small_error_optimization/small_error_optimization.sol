error E();
contract A {
	uint8[] x;
	function f() public {
		for (uint i = 0; i < 100; ++i)
			x.push(uint8(i));
		revert E();
	}
}
contract B {
	function f() public {
		(new A()).f();
	}
}