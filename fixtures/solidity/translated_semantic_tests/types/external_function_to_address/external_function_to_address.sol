contract C {
    function f() public returns (bool) {
        return this.f.address == address(this);
    }
    function g(function() external cb) public returns (address) {
        return cb.address;
    }
}