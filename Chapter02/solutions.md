## Comprehension Check

**Exercise 1.** Given the following lines of code as they might appear in a
source file, how would you change them to use them directly in the REPL?

``` haskell
half x = x / 2
square x = x * x
```

> I wouldn't change them. They work just fine. This is probably because I'm
> using GHC 8.6.5, so I don't need to add the `let` keyword to my function
> definitions.
> 
> ```
> GHCi, version 8.6.5: http://www.haskell.org/ghc/  :? for help
> Prelude> half x = x / 2
> Prelude> half 7
> 3.5
> Prelude> square x = x * x
> Prelude> square 7
> 49
> ```

**Exercise 2.** Write one function that has one parameter and works for all the
following expressions. Be sure to name the function.

``` haskell
3.14 * (5 * 5)
3.14 * (10 * 10)
3.14 * (2 * 2)
3.14 * (4 * 4)
```

> ``` haskell
> circleArea r = 3.14 * square r
> ```

**Exercise 3.** There is a value in `Prelude` called `pi`. Rewrite your
function to use `pi` instead of `3.14`.


> ``` haskell
> circleArea r = pi * square r
> ```

## Parentheses and Association

Below are some pairs of functions that are alike except for parentheses. Read
them carefully and decide if the parentheses change the results of the
function. Check your work in GHCi.

**Exercise 1.**

**(a)** `8 + 7 * 9`

**(b)** `(8 + 7) * 9`

> The parentheses do change the result because `(+)` has lower associativity
> than `(*)`.
>
> ```
> Prelude> 8 + 7 * 9
> 71
> Prelude> (8 + 7) * 9
> 135
> ```
>

**Exercise 2.**

**(a)** `perimeter x y = (x * 2) + (y * 2)`

**(b)** `perimeter x y = x * 2 + y * 2`

> The parentheses do not change the result because `(*)` has higher
> associativity than `(+)`. The evaluation of `(*)` would have happened first
> anyway.
>
> ```
> Prelude> perimeter x y = (x * 2) + (y * 2)
> Prelude> perimeter' x y = x * 2 + y * 2
> Prelude> perimeter 7 8 == perimeter' 7 8
> True
> ```

**Exercise 3.**

**(a)** `f x = x / 2 + 9`

**(b)** `f x = x / (2 + 9)`

> The parentheses do change the result because `(+)` has lower associativity
> than `(/)`.
>
> ```
> Prelude> f x = x / 2 + 9
> Prelude> f' x = x / (2 + 9)
> Prelude> f 7 == f' 7
> ```
