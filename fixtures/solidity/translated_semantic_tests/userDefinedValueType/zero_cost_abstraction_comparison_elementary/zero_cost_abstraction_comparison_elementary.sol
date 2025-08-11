// a test to compare the cost between using user defined value types and elementary type. See the
// test zero_cost_abstraction_userdefined.sol for a comparison.
pragma abicoder v2;
contract C {
    int x;
    function setX(int _x) external {
        x = _x;
    }
    function getX() view external returns (int) {
        return x;
    }
    function add(int a, int b) view external returns (int) {
        return a + b;
    }
}