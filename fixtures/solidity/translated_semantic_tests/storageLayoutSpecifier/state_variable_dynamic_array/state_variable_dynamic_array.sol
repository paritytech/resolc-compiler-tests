contract A {
    uint[] public arrayA;
}
contract C is A layout at 42 {
    uint[] public arrayC;
    function initA() public returns (uint, uint, uint) {
        arrayA.push(1);
        arrayA.push(2);
        arrayA.push(3);
        return (arrayA[0], arrayA[1], arrayA[2]);
    }
    function initCFromAInReverse() public returns (uint, uint, uint) {
        arrayC = new uint[](3);
        arrayC[0] = arrayA[2];
        arrayC[1] = arrayA[1];
        arrayC[2] = arrayA[0];
        return (arrayC[0], arrayC[1], arrayC[2]);
    }
    function clearA () public {
        arrayA.pop();
        arrayA.pop();
        arrayA.pop();
    }
    function arrayALength() public returns (uint) {
        return arrayA.length;
    }
    function arrayCLength() public returns (uint) {
        return arrayC.length;
    }
}