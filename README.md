# SecretDiary
A simple programme to lock, unlock, add and get entries from a Diary.

- Initially the `SecretDiary` class is locked, meaning `add_entry` and `get_entries` should throw an error.

- When the user calls `unlock`, `add_entry` and `get_entries` should work as desired.

- When the user calls `lock` again they throw errors again.

### Motivation 
This project was to better my understanding of the OO Principle Encapsulation, to do this I - 
- First organised it into one class.

- Then, when all of the tests are green, reorganise it into classes with high cohesion.

### How to use

- Clone this repo to your machine
- Run bundle 
- Run from the terminal

```
reqire './lib/secret_diary'
diary = Diary.new
padlock = Padlock.new

diary.padlock.unlock
=> false
diary.add_entry('Hello')
=> ["Hello"]
diary.get_entries
=> ["Hello"]
diary.padlock.lock
=> true
diary.add_entry('Goodbye')
=> Error 'The diary is locked, cannot add entry!'
diary.get_entries
=> Error 'The diary is locked, cannot see entries!'
```

### Status
All tests are passing and I sucsessfully refactored one class into 2 classes. 
