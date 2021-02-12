SecretDiary
  - lock
  - unlock
  - add_entry
  - get_entries

objects       | msg
--------------|--------
SecretDiary   | add_entry
              | get_entries
lock          | lock
              | unlock

Initially the `SecretDiary` class is locked, meaning `add_entry` and `get_entries` should throw an error.

When the user calls `unlock`, `add_entry` and `get_entries` should work as desired.

When the user locks the diary, by calling `lock`, `add_entry` and `get_entries` should, again, throw an error.

```flow
alias u="User"
alias sd="SecretDiary"
alias l="Lock"

u->sd: "get_entries"
sd->l: "locked?"
l-->sd: "true"
sd-->u: "error"

u->sd: "unlock"
sd->l: "unlock"
l->l: "locked? = false"
u->sd: "get_entries"
sd->l: "locked?"
l-->sd: "false"
sd-->u: "entries"
```
