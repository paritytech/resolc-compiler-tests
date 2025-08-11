contract C {
	function f1() external pure returns (string memory) { return "abcabc"; }
	function f2() external pure returns (string memory) { return "abcabc`~12345677890- _=+!@#$%^&*()[{]}|;:',<.>?"; }
	function g() external pure returns (bytes32) { return "abcabc"; }
	function h() external pure returns (bytes4) { return 0xcafecafe; }
}