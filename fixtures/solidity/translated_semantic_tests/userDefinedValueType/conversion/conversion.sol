pragma abicoder v2;
type MyUInt8 is uint8;
type MyInt8 is int8;
type MyUInt16 is uint16;
contract C {
    function f(uint a) external returns(MyUInt8) {
        return MyUInt8.wrap(uint8(a));
    }
    function g(uint a) external returns(MyInt8) {
        return MyInt8.wrap(int8(int(a)));
    }
    function h(MyUInt8 a) external returns (MyInt8) {
        return MyInt8.wrap(int8(MyUInt8.unwrap(a)));
    }
    function i(MyUInt8 a) external returns(MyUInt16) {
        return MyUInt16.wrap(MyUInt8.unwrap(a));
    }
    function j(MyUInt8 a) external returns (uint) {
        return MyUInt8.unwrap(a);
    }
    function k(MyUInt8 a) external returns (MyUInt16) {
        return MyUInt16.wrap(MyUInt8.unwrap(a));
    }
    function m(MyUInt16 a) external returns (MyUInt8) {
        return MyUInt8.wrap(uint8(MyUInt16.unwrap(a)));
    }
}