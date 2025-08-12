error CustomError(string);
contract C
{
    function f() external pure
    {
        require(false, CustomError("errorReason"));
    }
    function g() external pure
    {
        require(false, CustomError("anotherReason"));
    }
}