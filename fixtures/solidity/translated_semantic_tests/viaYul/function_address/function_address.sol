contract C {
    function f() external returns (address) {
        return C(address(0x1234)).f.address;
    }
    function g() external returns (bool, bool) {
        return (
            this.f.address == address(this),
            C(address(0x1234)).f.address == address(0x1234)
        );
    }
    function h(function() external a) public returns (address) {
        return a.address;
    }
}