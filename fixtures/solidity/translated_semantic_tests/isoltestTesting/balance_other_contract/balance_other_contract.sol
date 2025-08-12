contract C {
    constructor() payable {
        payable(address(0x12341234)).call{gas: gasleft(), value: 500}("");
    }
}