contract A {
	receive() external payable {
		revert("no_receive");
	}
}
contract C {
	A a = new A();
	receive() external payable {}
	function f() public {
		address addr = payable(a);
		assembly {
			let success := call(gas(), addr, 1, 0, 0, 0, 0)
			if eq(success, 0) {
				returndatacopy(0, 0, returndatasize())
				revert(0, returndatasize())
			}
		}
	}
	function h() public {
		address addr = payable(a);
		assembly {
			let success := call(gas(), addr, 100000000000000000000, 0, 0, 0, 0)
			if eq(success, 0) {
				returndatacopy(0, 0, returndatasize())
				revert(0, returndatasize())
			}
		}
	}
	function g() public view returns (uint) {
		return payable(this).balance;
	}
}