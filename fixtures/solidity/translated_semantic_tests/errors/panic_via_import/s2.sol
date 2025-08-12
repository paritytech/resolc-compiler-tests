import { E as Panic } from "s1.sol";
contract C {
    error E(uint);
    function a() public pure {
        revert Panic(1);
    }
    function b() public pure {
        revert E(1);
    }
}