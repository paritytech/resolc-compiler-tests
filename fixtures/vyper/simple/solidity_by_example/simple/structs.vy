#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "first",
#!       "inputs": [
#!         {
#!           "method": "create_",
#!           "calldata": [
#!             "0x20",
#!             "4",
#!             "0x7465737400000000000000000000000000000000000000000000000000000000"
#!           ],
#!           "caller": "0xF10db224c7005C76bf7702E3b772E92317C0DB5B"
#!         },
#!         {
#!           "method": "get",
#!           "calldata": [
#!             "0"
#!           ],
#!           "caller": "0xF10db224c7005C76bf7702E3b772E92317C0DB5B"
#!         }
#!       ],
#!       "expected": [
#!         "0x40",
#!         "0",
#!         "4",
#!         "0x7465737400000000000000000000000000000000000000000000000000000000"
#!       ]
#!     },
#!     {
#!       "name": "second",
#!       "inputs": [
#!         {
#!           "method": "create_",
#!           "calldata": [
#!             "0x20",
#!             "5",
#!             "0x7465737431000000000000000000000000000000000000000000000000000000"
#!           ],
#!           "caller": "0x2635EAd190a573c1873D9A9A168D96feC033Bd75"
#!         },
#!         {
#!           "method": "create_",
#!           "calldata": [
#!             "0x20",
#!             "5",
#!             "0x7465737432000000000000000000000000000000000000000000000000000000"
#!           ],
#!           "caller": "0x2635EAd190a573c1873D9A9A168D96feC033Bd75"
#!         },
#!         {
#!           "method": "toggleCompleted",
#!           "calldata": [
#!             "0"
#!           ],
#!           "caller": "0x2635EAd190a573c1873D9A9A168D96feC033Bd75"
#!         },
#!         {
#!           "method": "update",
#!           "calldata": [
#!             "3",
#!             "0x40",
#!             "5",
#!             "0x7465737433000000000000000000000000000000000000000000000000000000"
#!           ],
#!           "caller": "0x2635EAd190a573c1873D9A9A168D96feC033Bd75"
#!         },
#!         {
#!           "method": "get",
#!           "calldata": [
#!             "0"
#!           ],
#!           "expected": [
#!             "0x40",
#!             "1",
#!             "5",
#!             "0x7465737431000000000000000000000000000000000000000000000000000000"
#!           ],
#!           "caller": "0x2635EAd190a573c1873D9A9A168D96feC033Bd75"
#!         },
#!         {
#!           "method": "get",
#!           "calldata": [
#!             "3"
#!           ],
#!           "caller": "0x2635EAd190a573c1873D9A9A168D96feC033Bd75"
#!         }
#!       ],
#!       "expected": [
#!         "0x40",
#!         "0",
#!         "5",
#!         "0x7465737433000000000000000000000000000000000000000000000000000000"
#!       ]
#!     }
#!   ]
#! }

struct Todo:
    text: String[100]
    completed: bool

# An array of 'Todo' structs
todos: public(Todo[100])
count: uint256

@external
def create_(_text: String[100]):
    # 2 ways to initialize a struct
    # key value mapping
    self.todos[self.count] = Todo(text=_text, completed=False)
    self.count += 1

    # initialize an empty struct and then update it
    todo: Todo = empty(Todo)
    todo.text = _text
    # todo.completed initialized to false

    self.todos[self.count] = todo
    self.count += 1

# Solidity automatically created a getter for 'todos' so
# you don't actually need this function.
@external
@view
def get(_index: uint256) -> (String[100], bool):
    todo: Todo = self.todos[_index]
    return (todo.text, todo.completed)

# update text
@external
def update(_index: uint256, _text: String[100]):
    self.todos[_index].text = _text

# update completed
@external
def toggleCompleted(_index: uint256):
    self.todos[_index].completed = not self.todos[_index].completed
