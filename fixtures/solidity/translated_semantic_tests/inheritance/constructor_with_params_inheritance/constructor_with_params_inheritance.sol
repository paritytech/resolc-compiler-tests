contract C {
    uint public i;
    uint public k;
    constructor(uint newI, uint newK) {
        i = newI;
        k = newK;
    }
}
contract D is C {
    constructor(uint newI, uint newK) C(newI, newK + 1) {}
}