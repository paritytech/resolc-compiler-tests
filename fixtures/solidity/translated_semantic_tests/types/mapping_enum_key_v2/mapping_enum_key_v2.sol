pragma abicoder v2;
enum E { A, B, C }
contract test {
    mapping(E => uint8) table;
    function get(E k) public returns (uint8 v) {
        return table[k];
    }
    function set(E k, uint8 v) public {
        table[k] = v;
    }
}