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