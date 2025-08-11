// a test to compare the cost between using user defined value types and elementary type. See the
// test zero_cost_abstraction_elementary.sol for comparison.
pragma abicoder v2;
type MyInt is int;
contract C {
    int x;
    function setX(MyInt _x) external {
        x = MyInt.unwrap(_x);
    }
    function getX() view external returns (MyInt) {
        return MyInt.wrap(x);
    }
    function add(MyInt a, MyInt b) pure external returns(MyInt) {
        return MyInt.wrap(MyInt.unwrap(a) + MyInt.unwrap(b));
    }
}