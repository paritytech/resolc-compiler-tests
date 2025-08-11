pragma abicoder v1;
contract C {
    function f(bool a, bytes calldata b, bytes32[2] calldata c)
        public
        returns (bool, bytes calldata, bytes32[2] calldata)
    {
        return (a, b, c);
    }
}