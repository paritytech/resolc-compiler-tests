// Represent a 18 decimal, 256 bit wide fixed point type using a user defined value type.
type UFixed256x18 is uint256;
/// A minimal library to do fixed point operations on UFixed256x18.
library FixedMath {
    uint constant multiplier = 10**18;
    /// Adds two UFixed256x18 numbers. Reverts on overflow, relying on checked arithmetic on
    /// uint256.
    function add(UFixed256x18 a, UFixed256x18 b) internal returns (UFixed256x18) {
        return UFixed256x18.wrap(UFixed256x18.unwrap(a) + UFixed256x18.unwrap(b));
    }
    /// Multiplies UFixed256x18 and uint256. Reverts on overflow, relying on checked arithmetic on
    /// uint256.
    function mul(UFixed256x18 a, uint256 b) internal returns (UFixed256x18) {
        return UFixed256x18.wrap(UFixed256x18.unwrap(a) * b);
    }
    /// Take the floor of a UFixed256x18 number.
    /// @return the largest integer that does not exceed `a`.
    function floor(UFixed256x18 a) internal returns (uint256) {
        return UFixed256x18.unwrap(a) / multiplier;
    }
    /// Turns a uint256 into a UFixed256x18 of the same value.
    /// Reverts if the integer is too large.
    function toUFixed256x18(uint256 a) internal pure returns (UFixed256x18) {
        return UFixed256x18.wrap(a * multiplier);
    }
}
contract TestFixedMath {
    function add(UFixed256x18 a, UFixed256x18 b) external returns (UFixed256x18) {
        return FixedMath.add(a, b);
    }
    function mul(UFixed256x18 a, uint256 b) external returns (UFixed256x18) {
        return FixedMath.mul(a, b);
    }
    function floor(UFixed256x18 a) external returns (uint256) {
        return FixedMath.floor(a);
    }
    function toUFixed256x18(uint256 a) external returns (UFixed256x18) {
        return FixedMath.toUFixed256x18(a);
    }
}