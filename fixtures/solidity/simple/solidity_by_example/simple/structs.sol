//! {
//!   "modes": [
//!     "Y >=0.8.1",
//!     "E",
//!     "I"
//!   ],
//!   "cases": [
//!     {
//!       "name": "first",
//!       "inputs": [
//!         {
//!           "method": "create",
//!           "calldata": [
//!             "0x20",
//!             "4",
//!             "0x7465737400000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "caller": "0xB81b2D19Cdc498c4E135c40Fb20b2519bAc20dA2"
//!         },
//!         {
//!           "method": "get",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0xB81b2D19Cdc498c4E135c40Fb20b2519bAc20dA2"
//!         }
//!       ],
//!       "expected": [
//!         "0x40",
//!         "0",
//!         "4",
//!         "0x7465737400000000000000000000000000000000000000000000000000000000"
//!       ]
//!     },
//!     {
//!       "name": "second",
//!       "inputs": [
//!         {
//!           "method": "create",
//!           "calldata": [
//!             "0x20",
//!             "5",
//!             "0x7465737431000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "caller": "0x2ea26887383BE9361d48C4AdB01b41d1EC2A6F0c"
//!         },
//!         {
//!           "method": "create",
//!           "calldata": [
//!             "0x20",
//!             "5",
//!             "0x7465737432000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "caller": "0x2ea26887383BE9361d48C4AdB01b41d1EC2A6F0c"
//!         },
//!         {
//!           "method": "toggleCompleted",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0x2ea26887383BE9361d48C4AdB01b41d1EC2A6F0c"
//!         },
//!         {
//!           "method": "update",
//!           "calldata": [
//!             "3",
//!             "0x40",
//!             "5",
//!             "0x7465737433000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "caller": "0x2ea26887383BE9361d48C4AdB01b41d1EC2A6F0c"
//!         },
//!         {
//!           "method": "get",
//!           "calldata": [
//!             "0"
//!           ],
//!           "expected": [
//!             "0x40",
//!             "1",
//!             "5",
//!             "0x7465737431000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "caller": "0x2ea26887383BE9361d48C4AdB01b41d1EC2A6F0c"
//!         },
//!         {
//!           "method": "get",
//!           "calldata": [
//!             "3"
//!           ],
//!           "caller": "0x2ea26887383BE9361d48C4AdB01b41d1EC2A6F0c"
//!         }
//!       ],
//!       "expected": [
//!         "0x40",
//!         "0",
//!         "5",
//!         "0x7465737433000000000000000000000000000000000000000000000000000000"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT
pragma solidity >=0.4.16;

contract Test {
    struct Todo {
        string text;
        bool completed;
    }

    // An array of 'Todo' structs
    Todo[] public todos;

    function create(string memory _text) public {
        // 3 ways to initialize a struct
        // - calling it like a function
        todos.push(Todo(_text, false));

        // key value mapping
        todos.push(Todo({text: _text, completed: false}));

        // initialize an empty struct and then update it
        Todo memory todo;
        todo.text = _text;
        // todo.completed initialized to false

        todos.push(todo);
    }

    // Solidity automatically created a getter for 'todos' so
    // you don't actually need this function.
    function get(uint _index) public view returns (string memory text, bool completed) {
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);
    }

    // update text
    function update(uint _index, string memory _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }

    // update completed
    function toggleCompleted(uint _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }
}
