contract C {
    function getOne() public payable nonFree returns (uint256 r) {
        return 1;
    }
    modifier nonFree {
        if (msg.value > 0) _;
    }
}