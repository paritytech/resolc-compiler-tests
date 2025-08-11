contract Base {
	uint public x;
	uint public y;
	function init(uint a, uint b) public {
		x = a;
		y = b;
	}
	function init(uint a) public {
		x = a;
	}
}
contract Child is Base {
	function cInit(uint c) public {
		Base.init(c);
	}
	function cInit(uint c, uint d) public {
		Base.init(c, d);
	}
}