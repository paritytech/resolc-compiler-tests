contract C {
    uint x;
    uint y;
    fallback () payable external { ++x; }
    receive () payable external { ++y; }
    function f() external returns (uint, uint) { return (x, y); }
}