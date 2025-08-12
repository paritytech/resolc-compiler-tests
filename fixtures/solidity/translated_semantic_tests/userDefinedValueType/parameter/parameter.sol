pragma abicoder v2;
type MyAddress is address;
contract C {
    function id(MyAddress a) external returns (MyAddress b) {
        b = a;
    }
    function unwrap_assembly(MyAddress a) external returns (address b) {
        assembly { b := a }
    }
    function wrap_assembly(address a) external returns (MyAddress b) {
        assembly { b := a }
    }
    function unwrap(MyAddress a) external returns (address b) {
        b = MyAddress.unwrap(a);
    }
    function wrap(address a) external returns (MyAddress b) {
        b = MyAddress.wrap(a);
    }
}