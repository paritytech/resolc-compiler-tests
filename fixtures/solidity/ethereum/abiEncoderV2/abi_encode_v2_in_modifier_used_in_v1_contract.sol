==== Source: A.sol ====
pragma abicoder v2;

struct Data {
    uint value;
}

contract A {
    function get() public view returns (Data memory) {
        return Data(5);
    }
}

contract B {
    uint x = 10;
    uint y = 10;

    modifier updateStorage() {
        A a = new A();
        x = a.get().value;
        _;
        y = a.get().value;
    }
}
==== Source: B.sol ====
pragma abicoder v1;

import "./A.sol";

contract C is B {
    function test()
        public
        updateStorage
        returns (uint, uint)
    {
        return (x, y);
    }
}
// ----
// test() -> 5, 10
// gas irOptimized: 87337
// gas legacy: 66250
// gas legacy code: 36400
