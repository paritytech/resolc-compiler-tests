contract A {
	uint immutable a;
	constructor() {
		a = 7;
	}
	function f() public view returns (uint) { return a; }
}
contract B {
	uint immutable a;
	constructor() {
		a = 5;
	}
	function f() public view returns (uint) { return a; }
}
contract C {
	uint immutable a;
	uint public x;
	uint public y;
	constructor() {
		a = 3;
		x = (new A{salt: hex"00"}()).f();
		y = (new B{salt: hex"00"}()).f();
	}
	function f() public returns (uint256, uint, uint) {
		return (a, (new A{salt: hex"01"}()).f(), (new B{salt: hex"01"}()).f());
	}
}