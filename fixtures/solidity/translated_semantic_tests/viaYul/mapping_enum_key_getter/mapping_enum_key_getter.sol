pragma abicoder               v2;
contract test {
    enum E { A, B, C }
    mapping(E => uint8) public table;
    function set(E k, uint8 v) public {
        table[k] = v;
    }
}