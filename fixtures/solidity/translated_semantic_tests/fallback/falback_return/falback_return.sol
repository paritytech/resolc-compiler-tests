contract A {
    uint public x;
    fallback () external {
        if (x == 2) return;
        x++;
    }
}