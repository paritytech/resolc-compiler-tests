pragma abicoder v1;
import "./A.sol";
contract C is B {
    function test()
        public
        updateStorage
        returns (uint, uint)
    {
        return (x, y);
    }
}