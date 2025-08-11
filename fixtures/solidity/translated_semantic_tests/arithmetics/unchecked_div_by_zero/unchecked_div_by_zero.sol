contract C {
    function div(uint256 a, uint256 b) public returns (uint256) {
        // Does not disable div by zero check
        unchecked {
            return a / b;
        }
    }
    function mod(uint256 a, uint256 b) public returns (uint256) {
        // Does not disable div by zero check
        unchecked {
            return a % b;
        }
    }
}