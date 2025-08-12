==== Source: A.sol ====
struct S { uint x; }
function set(S storage a, uint v) { a.x = v; }

==== Source: B.sol ====
import "./A.sol";
import "./A.sol" as A;
contract C {
  A.S data;
  function f(uint v) public returns (uint one, uint two) {
    A.set(data, v);
    one = data.x;
    set(data, v + 1);
    two = data.x;
  }
}
// ----
// f(uint256): 7 -> 7, 8
