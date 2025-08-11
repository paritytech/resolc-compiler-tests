contract C {
    bool transient locked;
    modifier nonReentrant {
        require(!locked, "Reentrancy attempt");
        locked = true;
        _;
        locked = false;
    }
    function test(address newAddress, bool reentrancy) nonReentrant public {
        if (reentrancy)
            reentrantCall(newAddress);
    }
    function reentrantCall(address a) public {
        this.test(a, false);
    }
}