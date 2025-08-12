abstract contract A {
    constructor (mapping (uint => uint) storage m) {
        m[5] = 20;
    }
}
contract C is A {
    mapping (uint => uint) public m;
    constructor() A(m) {
    }
}