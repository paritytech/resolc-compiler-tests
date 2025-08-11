pragma abicoder               v2;
contract C {
    function f(int8 a, uint8 b) public returns (int256) {
        assembly {
            a := 0xfffffff0
        }
        // Higher bits should be signextended before the shift
        return a >> b;
    }
    function g(int8 a, uint8 b) public returns (int256) {
        assembly {
            a := 0xf0
        }
        // Higher bits should be signextended before the shift
        return a >> b;
    }
}