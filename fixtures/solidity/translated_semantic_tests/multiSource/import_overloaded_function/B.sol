import {sub} from "./A.sol";
contract C
{
    function f() public pure returns (uint, uint) {
        return (sub(1, 2), sub(2));
    }
}