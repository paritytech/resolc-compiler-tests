contract C {
    event Terminated();
    function terminate() external {
        emit Terminated();
        emit Terminated();
    }
}