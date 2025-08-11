pragma abicoder v2;
contract C {
	enum E {X, Y}
	function f(E[] calldata arr) external {
		arr[1];
	}
}