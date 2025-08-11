contract C {
    string public a;
    string public b;
    bytes public c;
    string public d = "abcd";
    constructor() {
        a = "hello world";
        b = hex"41424344";
        c = hex"ff077fff";
    }
}