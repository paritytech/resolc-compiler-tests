pragma abicoder v2;
contract C {
    uint[][] a;
    function f() public returns (uint[][] memory) {
        a.push();
        a.push();
        a[0].push(0);
        a[0].push(1);
        a[1].push(2);
        a[1].push(3);
        uint[][] memory m = a;
        return m;
    }
}