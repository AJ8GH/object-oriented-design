```flow
alias u="User"
alias c="Calculator"
alias d="Display"

u->c: "add(3, 2)"
c->c: "3+2 = answer"
c->d: "show_answer(answer)"
d-->c: "'The answer is 5'"
c->u: "'The answer is 5'"
```
