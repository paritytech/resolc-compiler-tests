contract A {
    function f() public {}
	function g() public {}
}
contract C {
    A a = new A();
    function getContract() public view returns (A) {
        return a;
    }
    function test(bool b) public view returns (bytes4) {
        return (b ? getContract().f : getContract().g).selector;
    }
}