pragma abicoder v1;
contract C {
    // Input is still not checked - this needs ABIEncoderV2!
    function f(uint16 a, uint16 b) public returns (uint16) {
        return a + b;
    }
}