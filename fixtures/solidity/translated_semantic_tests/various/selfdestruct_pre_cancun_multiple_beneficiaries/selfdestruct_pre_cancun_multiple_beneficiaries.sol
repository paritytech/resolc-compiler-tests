contract C {
    constructor() payable {}
    function terminate(address _beneficiary) public {
        selfdestruct(payable(_beneficiary));
        assert(false);
    }
}
contract D {
    address account1 = payable(0x3111111111111111111111111111111111111111);
    address account2 = payable(0x3222222222222222222222222222222222222222);
    C public c;
    constructor() payable {}
    function deploy() public payable {
        c = new C{value: 1 ether}();
    }
    function terminate(address _beneficiary) public {
        c.terminate(_beneficiary);
    }
    function test_deploy_and_terminate_twice() public {
        deploy();
        terminate(account1);
        terminate(account2);
    }
    function exists() public view returns (bool) {
        return address(c).code.length != 0;
    }
}