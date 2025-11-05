contract C {
    constructor() payable {}
    function terminate() external {
        // NOTE: The contract `c` should still exist in the test below
        // when the call to selfdestruct is executed in a transaction
        // different from the one in which the contract was created.
        // However, it should still send all Ether in `c` to the beneficiary.
        selfdestruct(payable(msg.sender));
        assert(false);
    }
}
contract D {
    C public c;
    constructor() payable {}
    function call() public payable {
        // Just for sending funds to this contract
    }
    function deploy_create() public payable {
        c = new C{value: 1 ether}();
    }
    function deploy_create2() public payable {
        c = new C{value: 1 ether, salt: hex"1234"}();
    }

    function transferAllFunds() public returns (bool) {
        bool success = payable(msg.sender).send(address(this).balance);
        return success;
    }

    function terminate() public {
        // NOTE: A second call to `c.terminate()` or any other function of the contract `c` will succeed if the
        // previous selfdestruct was performed in a different transaction, since the contract will still exists.
        c.terminate();
    }
    function create_and_terminate() public {
        deploy_create();
        terminate();
    }
    function create2_and_terminate() public {
        deploy_create2();
        terminate();
    }
    function balance() public view returns (uint) {
        return address(this).balance;
    }
    function balance_inner() public view returns (uint) {
        return address(c).balance;
    }
    function exists() public view returns (bool) {
        return address(c).code.length != 0;
    }
}