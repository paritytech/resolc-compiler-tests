pragma abicoder               v2;
contract C {
    function f(uint256[] calldata x, uint256 s, uint256 e) external returns (uint256) {
        return uint256[](x[s:e]).length;
    }
    function f(uint256[] calldata x, uint256 s, uint256 e, uint256 ss, uint256 ee) external returns (uint256) {
        return uint256[](x[s:e][ss:ee]).length;
    }
    function f_s_only(uint256[] calldata x, uint256 s) external returns (uint256) {
        return uint256[](x[s:]).length;
    }
    function f_e_only(uint256[] calldata x, uint256 e) external returns (uint256) {
        return uint256[](x[:e]).length;
    }
    function g(uint256[] calldata x, uint256 s, uint256 e, uint256 idx) external returns (uint256) {
        return uint256[](x[s:e])[idx];
    }
    function gg(uint256[] calldata x, uint256 s, uint256 e, uint256 idx) external returns (uint256) {
        return x[s:e][idx];
    }
    function gg_s_only(uint256[] calldata x, uint256 s, uint256 idx) external returns (uint256) {
        return x[s:][idx];
    }
    function gg_e_only(uint256[] calldata x, uint256 e, uint256 idx) external returns (uint256) {
        return x[:e][idx];
    }
}