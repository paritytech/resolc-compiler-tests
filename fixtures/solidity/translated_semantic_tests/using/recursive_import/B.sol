import { cr } from "./A.sol";
contract C {
    function f() public returns (uint) {
        return cr().f().g();
    }
}