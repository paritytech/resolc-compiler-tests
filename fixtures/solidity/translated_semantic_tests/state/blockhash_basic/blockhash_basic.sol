contract C {
    bytes32 public genesisHash;
    bytes32 public currentHash;
    constructor() {
        require(block.number == 2);
        genesisHash = blockhash(0);
        currentHash = blockhash(2);
    }
    function f(uint blockNumber) public returns (bytes32) {
        return blockhash(blockNumber);
    }
}