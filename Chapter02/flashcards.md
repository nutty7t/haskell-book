### Question

What is a **Prelude**?

### Answer

A library of standard functions. GHCi automatically loads these by default.
It's possible to turn `Prelude` off. There exists alternative preludes.

---

### Question

What is a **redex**?

### Answer

It stands for reducible expression. It is any expression whose evaluation
requires work to be done. Values are irreducible, but applications of functions
to arguments are reducible. Reducing an expression means evaluating the terms
until you're left with a value.

---

### Question

What is **weak head normal form (WHNF)**?

### Answer

An expression is in weak head normal form, it if is either:

- a constructor (i.e. `True`, `Just (square 42)`)

- a built-in function applied to too few arguments (i.e. `(+) 2` or `sqrt`)

- a lambda abstraction (i.e. `\x -> expression`)

---

### Question

How can you use an infix function in a prefix fashion?

### Answer

Wrap the function in parentheses.

``` haskell
Prelude> (+) 100 100
200
```

---

### Question

How can you use a prefix function in an infix fashion?

### Answer

Wrap the function in backticks.

``` haskell
Prelude> (\x -> x * x) `map` [1, 2, 3]
[1,4,9]
```
