type MyInt is int;
contract C {
    mapping(MyInt => int) public m;
    function set(MyInt key, int value) external {
        m[key] = value;
    }
    function set_unwrapped(int key, int value) external {
        m[MyInt.wrap(key)] = value;
    }
}