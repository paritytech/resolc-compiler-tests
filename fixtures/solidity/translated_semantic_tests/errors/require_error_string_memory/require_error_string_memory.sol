error CustomError(string);
contract C
{
    function f() external pure
    {
        string memory reason = "errorReason";
        require(false, CustomError(reason));
    }
    function g() external pure
    {
        string memory reason = "anotherReason";
        require(false, CustomError(reason));
    }
}