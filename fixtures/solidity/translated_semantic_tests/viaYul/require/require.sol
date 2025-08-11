contract C {
	function f(bool a) public pure returns (bool x) {
		bool b = a;
		x = b;
		require(b);
	}
	function fail() public pure returns (bool x) {
		x = true;
		require(false);
	}
	function succeed() public pure returns (bool x) {
		x = true;
		require(true);
	}
	function f2(bool a) public pure returns (bool x) {
		x = a;
		string memory message;
		message = "fancy message!";
		require(a, message);
	}
	function f3(bool a) public pure returns (bool x) {
		x = a;
		require(a, "msg");
	}
	function f4(bool a) public pure returns (bool x) {
		x = a;
		string memory message;
		require(a, message);
	}
}