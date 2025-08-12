contract C {
    uint256 constant LEN = 3;
    uint256[LEN] public a;
    constructor(uint256[LEN] memory _a) {
        a = _a;
    }
}