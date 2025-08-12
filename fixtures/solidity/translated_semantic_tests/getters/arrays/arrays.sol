contract C {
    uint8[][2] public a;
    constructor() {
        a[1].push(3);
        a[1].push(4);
    }
}