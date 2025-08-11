event E();
library L {
    event E();
}
contract C {
    function main() external pure returns (bytes32, bytes32) {
        assert(E.selector == L.E.selector);
        return (E.selector, L.E.selector);
    }
}