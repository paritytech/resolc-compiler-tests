pragma abicoder               v2;
contract C {
    function f(bytes[] calldata a)
        external
        returns (uint256, uint256, bytes memory)
    {
        bytes memory m = a[0];
        return (a.length, m.length, m);
    }
}