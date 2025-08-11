contract C {
	function testFunction() external {}
	function testYul(uint32 newSelector) view public returns (uint32) {
		function() external fp = this.testFunction;
		assembly {
			fp.selector := newSelector
		}
		return uint32(fp.selector);
	}
}