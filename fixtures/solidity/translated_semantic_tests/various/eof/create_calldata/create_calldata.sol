contract C {
	bytes public s;
	constructor(uint256 x, bytes memory b) {
		// On EOF msg.data contains constructor arguments, while on legacy it's empty
		// (arguments are appended to the code).
		s = msg.data;
		assert(msg.data.length == 288);
		uint y;
		bytes memory d;
		(y, d) = abi.decode(msg.data, (uint256, bytes));
		assert(x == y);
		assert(b.length == d.length);
		for (uint i = 0; i < b.length; ++i)
			assert(b[i] == d[i]);
	}
}