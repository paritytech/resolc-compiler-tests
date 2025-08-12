import { global } from "./A.sol";
function g(global x) pure returns (global) { return global.wrap(global.unwrap(x) + 10); }
contract C {
    using { g } for global;
    function f(global r) public pure returns (global) {
        return r.f().g();
    }
}