contract C {
    uint256 public a;
    uint256[3] public b;
    constructor(uint256 _a, uint256[3] memory _b) {
        a = _a;
        b = _b;
    }
}