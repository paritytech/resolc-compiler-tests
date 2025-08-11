error CustomError(uint256, string, uint256);
contract C
{
    function f() external pure
    {
        require(false, CustomError(1, "two", 3));
    }
    function g() external pure
    {
        require(false, CustomError(4, "five", 6));
    }
}