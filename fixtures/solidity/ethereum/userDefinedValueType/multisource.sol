==== Source: A.sol ====
type MyInt is int;
type MyAddress is address;
==== Source: B.sol ====
import {MyInt, MyAddress as OurAddress} from "./A.sol";
contract A {
    function f(int x) external view returns(MyInt) { return MyInt.wrap(x); }
    function f(address x) external view returns(OurAddress) { return OurAddress.wrap(x); }
}
// ----
// f(int256): 5 -> 5
// f(address): 1 -> 1
