==== Source: A.sol ====
import {T as U} from "./A.sol";
import "./A.sol" as X;

type T is uint;
function f(T x) pure returns (T) { return T.wrap(T.unwrap(x) + 1); }
function g(T x) pure returns (uint) { return T.unwrap(x) + 10; }

using { f } for X.X.U global;
using { g } for T global;

function cr() pure returns (T) {}

==== Source: B.sol ====
import { cr } from "./A.sol";

contract C {
    function f() public returns (uint) {
        return cr().f().g();
    }
}
// ----
// f() -> 11
