import {MyInt, MyAddress as OurAddress} from "./A.sol";
contract A {
    function f(int x) external view returns(MyInt) { return MyInt.wrap(x); }
    function f(address x) external view returns(OurAddress) { return OurAddress.wrap(x); }
}