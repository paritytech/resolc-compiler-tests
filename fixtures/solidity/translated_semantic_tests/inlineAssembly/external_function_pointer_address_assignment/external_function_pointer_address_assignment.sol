contract C {
	function testFunction() external {}
	function testYul(address newAddress) view public returns (address adr) {
		function() external fp = this.testFunction;
		assembly {
			fp.address := newAddress
		}
		return fp.address;
	}
}