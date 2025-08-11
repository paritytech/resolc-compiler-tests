contract C {
    function f(bool condition) public returns (uint x) {
        x = 23;
        if (condition)
            x = 42;
    }
    function g(bool condition) public returns (uint x) {
        x = 0;
        if (condition)
            x = 42;
        else
            x = 23;
    }
    function h(bool condition) public returns (uint x) {
        if (condition)
            return 42;
        x = 23;
    }
    function i(bool condition) public returns (uint x) {
        if (condition)
            x = 10;
        else
            return 23;
        x = 42;
    }
    function j(uint a, uint b) public returns (uint x, uint y) {
        x = 42;
        if (a + b < 10)
            x = a;
        else
            x = b;
        y = 100;
    }
    function k(uint a, uint b) public returns (uint x, uint y) {
        x = 42;
        do {
            if (a + b < 10)
            {
                if (a == b)
                {
                    x = 99; y = 99;
                    break;
                }
                else
                {
                    x = a;
                }
            }
            else
            {
                x = b;
                if (a != b)
                    y = 17;
                else
                    y = 13;
                break;
            }
            y = 100;
        } while(false);
    }
}