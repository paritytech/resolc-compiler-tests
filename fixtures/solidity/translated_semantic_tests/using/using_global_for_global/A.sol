type global is uint;
using { f } for global global;
function f(global x) pure returns (global) { return global.wrap(global.unwrap(x) + 1); }