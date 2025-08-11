pragma abicoder v1;
type MyBytes2 is bytes2;
contract C {
    function f(MyBytes2 val) external returns (bytes2 ret) {
        assembly {
            ret := val
        }
    }
    function g(bytes2 val) external returns (bytes2 ret) {
        assembly {
            ret := val
        }
    }
    function h(uint256 val) external returns (MyBytes2) {
        MyBytes2 ret;
        assembly {
            ret := val
        }
        return ret;
    }
}