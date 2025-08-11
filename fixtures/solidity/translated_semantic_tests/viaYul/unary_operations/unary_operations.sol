contract C {
	function preincr_u8(uint8 a) public pure returns (uint8) {
		return ++a + a;
	}
	function postincr_u8(uint8 a) public pure returns (uint8) {
		return a++ + a;
	}
	function predecr_u8(uint8 a) public pure returns (uint8) {
		return --a + a;
	}
	function postdecr_u8(uint8 a) public pure returns (uint8) {
		return a-- + a;
	}
	function preincr_s8(int8 a) public pure returns (int8 ret1, int8 ret2) {
		ret1 = ++a;
		ret2 = a;
	}
	function postincr_s8(int8 a) public pure returns (int8 ret1, int8 ret2) {
		ret1 = a++;
		ret2 = a;
	}
	function predecr_s8(int8 a) public pure returns (int8 ret1, int8 ret2) {
		ret1 = --a;
		ret2 = a;
	}
	function postdecr_s8(int8 a) public pure returns (int8 ret1, int8 ret2) {
		ret1 = a--;
		ret2 = a;
	}
	function preincr(uint a) public pure returns (uint) {
		return ++a + a;
	}
	function postincr(uint a) public pure returns (uint) {
		return a++ + a;
	}
	function predecr(uint a) public pure returns (uint) {
		return --a + a;
	}
	function postdecr(uint a) public pure returns (uint) {
		return a-- + a;
	}
	function not(bool a) public pure returns (bool)
	{
		return !a;
	}
	function bitnot(int256 a) public pure returns (int256)
	{
		return ~a;
	}
	function bitnot_u8(uint8 a) public pure returns (uint256 ret)
	{
		a = ~a;
		assembly {
			// Tests that the lower bit parts are cleaned up
			ret := a
		}
	}
	function bitnot_s8() public pure returns (int256 ret)
	{
		int8 a;
		assembly {
			a := 0x9C
		}
		a = ~a;
		assembly {
			// Tests that the lower bit parts are cleaned up
			ret := a
		}
	}
	function negate(int256 a) public pure returns (int256)
	{
		return -a;
	}
	function negate_s8(int8 a) public pure returns (int8)
	{
		return -a;
	}
	function negate_s16(int16 a) public pure returns (int16)
	{
		return -a;
	}
}