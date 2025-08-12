contract C {
	function add() public pure returns (uint8, uint8) {
		uint8 x; uint8 y = 0;
		assembly { x := 0x0101 }
		return (x + y, y + x);
	}
	function sub() public pure returns (uint8, uint8) {
		uint8 x; uint8 y = 1;
		assembly { x := 0x0101 }
		return (x - y, y - x);
	}
	function mul() public pure returns (uint8, uint8) {
		uint8 x; uint8 y = 1;
		assembly { x := 0x0101 }
		return (x * y, y * x);
	}
	function div() public pure returns (uint8, uint8) {
		uint8 x; uint8 y = 1;
		assembly { x := 0x0101 }
		return (x / y, y / x);
	}
	function mod() public pure returns (uint8, uint8) {
		uint8 x; uint8 y = 2;
		assembly { x := 0x0101 }
		return (x % y, y % x);
	}
	function inc_pre() public pure returns (uint8) {
		uint8 x;
		assembly { x := 0x0100 }
		return ++x;
	}
	function inc_post() public pure returns (uint8) {
		uint8 x;
		assembly { x := 0x0100 }
		return x++;
	}
	function dec_pre() public pure returns (uint8) {
		uint8 x;
		assembly { x := not(0xFF) }
		return --x;
	}
	function dec_post() public pure returns (uint8) {
		uint8 x;
		assembly { x := not(0xFF) }
		return x--;
	}
	function neg() public pure returns (int8) {
		int8 x;
		assembly { x := 0x80 }
		return -x;
	}
}