contract C {
    function f(uint[2][2] calldata x) public returns (uint[2][2] memory r) {
        assembly { x := 0x24 }
        r = x;
    }
}