interface A {}
library L {
    function get(mapping(A => uint8) storage table, A k) external returns (uint8) {
        return table[k];
    }
    function set(mapping(A => uint8) storage table, A k, uint8 v) external {
        table[k] = v;
    }
}
contract test {
    mapping(A => uint8) table;
    function get(A k) public returns (uint8 v) {
        return L.get(table, k);
    }
    function set(A k, uint8 v) public {
        L.set(table, k, v);
    }
}