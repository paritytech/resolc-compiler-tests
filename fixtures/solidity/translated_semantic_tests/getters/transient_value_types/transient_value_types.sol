contract C {
    int8 public transient x;
    function f() public returns(int8) {
        x = -1;
        return this.x();
    }
}