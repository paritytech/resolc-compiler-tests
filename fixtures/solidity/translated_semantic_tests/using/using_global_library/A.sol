type T is uint;
using L for T global;
library L {
    function inc(T x) internal pure returns (T) {
        return T.wrap(T.unwrap(x) + 1);
    }
    function dec(T x) external pure returns (T) {
        return T.wrap(T.unwrap(x) - 1);
    }
}