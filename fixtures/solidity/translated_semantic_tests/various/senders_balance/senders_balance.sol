contract C {
    function f() public view returns (uint256) {
        return msg.sender.balance;
    }
}
contract D {
    C c = new C();
    constructor() payable {}
    function f() public view returns (uint256) {
        return c.f();
    }
}