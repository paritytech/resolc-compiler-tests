contract C {
    function keccak1() public pure returns (bytes32) {
		return keccak256("123");
    }
    function keccak2() public pure returns (bytes32) {
		bytes memory a = "123";
		return keccak256(a);
    }
}