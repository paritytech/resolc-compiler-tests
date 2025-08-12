contract Base
{
    error CustomError(uint256, string, uint256);
}
contract C is Base
{
    function f() external pure
    {
        require(false, CustomError(1, "two", 3));
    }
}