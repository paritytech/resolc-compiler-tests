pragma abicoder v2;
struct T {
    bytes x;
    uint[3] y;
}
contract E {
    function f(bool a, T calldata b, bytes32[2] calldata c)
        public
        returns (bool, T calldata, bytes32[2] calldata)
    {
        return (a, b, c);
    }
}