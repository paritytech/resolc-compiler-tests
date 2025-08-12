contract C {
    function f() external returns (bytes4) {
        return this.f.selector;
    }
    function h(function() external a) public returns (bytes4) {
        return a.selector;
    }
}