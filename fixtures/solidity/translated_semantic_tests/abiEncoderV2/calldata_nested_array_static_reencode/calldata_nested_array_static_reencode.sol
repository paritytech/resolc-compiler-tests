pragma abicoder v2;
contract C {
	function f(uint[3][] calldata a) public {
		abi.encode(a);
	}
	function f(uint[][3] calldata a) public {
		abi.encode(a);
	}
	function f(uint[2][2] calldata a) public {
		abi.encode(a);
	}
}