contract A {
    uint public x;
    // Signature is d88e0b00
    function fow() public { x = 3; }
    fallback () external { x = 2; }
}