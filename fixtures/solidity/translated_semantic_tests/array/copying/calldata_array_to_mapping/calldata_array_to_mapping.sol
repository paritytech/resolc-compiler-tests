pragma abicoder v2;
contract C {
    mapping (uint => uint8[][]) m;
    uint8[][] s;
    function from_calldata(uint8[][] calldata _a) public returns (uint8[][] memory) {
        m[0] = _a;
        return m[0];
    }
}