contract test {
    constructor() payable {}
    function getBalance() public returns (uint256 balance) {
        return address(this).balance;
    }
}