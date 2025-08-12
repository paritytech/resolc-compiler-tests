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