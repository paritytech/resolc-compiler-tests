import "./A.sol" as M;
contract D is M.C {
	constructor (int p) M.C(p) public {}
}
contract A {
	function g(int p) public returns (int) {
		D d = new D{salt: bytes32(uint256(p))}(p);
		return d.getX();
	}
}