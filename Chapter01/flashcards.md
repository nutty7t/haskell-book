### Question

What is a **model of computation**?

### Answer

An abstract specification that describes *how* an output of a mathematical
function is computed given an input.

---

### Question

What is the definition of an **expression** or **lambda term**?

### Answer

A variable name, an abstraction (or function), or an application.

Let $x$ be a variable, and $M$ and $N$ be lambda terms.

$(\lambda x . M)$ is an abstraction.

$(M N)$ is an application.

---

### Question

Identify the **head** and **tail** of the abstraction $\lambda b . ts$.

### Answer

The *head* is $b$. The *tail* is $ts$.

---

### Question

What is $\alpha$-conversion (or $\alpha$-equivalence)?

### Answer

$\alpha$-conversion is a type of reduction that allows the changing of bound
variables. Two lambda terms are called $\alpha$-equivalent if they differ by
$\alpha$-conversion. E.g. $\lambda x . xx \equiv_{\alpha} \lambda y . yy$.

---

### Question

What is $\beta$-reduction?

### Answer

$\beta$-reduction is a type of reduction that captures the idea of function
application (apply lambdas to arguments). The input expression is substituted
for all bound variables within the body of the abstraction, and the head is
eliminated.

---

### Question

What is a **free** variable?

### Answer

Variables in the body of an abstraction that are not named in the head.

E.g. $y$ is *free* in $\lambda x . xy$.

---

### Question

What is a **bound** variable?

### Answer

Variables in the body of an abstraction that are named in the head.

E.g. $x$ is *bound* in $\lambda x . xy$.

---

### Question

What is **currying**? 

### Answer

The technique of translating the evaluation of a function that takes multiple
arguments into a sequence of functions, each with a single argument.

---

### Question

What is **beta normal form**?

### Answer

Beta normal form is when you cannot beta reduce terms any further. This
corresponds to a fully evaluated expression, or, in programming, a fully
executed program.

---

### Question

What is a **combinator**?

### Answer

A lambda term with no free variables. They *combine* the arguments that they
are given.

---

### Question

What is **divergence**?

### Answer

Divergence means that the reduction process never terminates or ends -- when a
term never *converges* to beta normal form. $(\lambda x . xx) (\lambda x . xx)$
diverges.

---

### Question

What is the normal form of $(\lambda abc . cba) zz (\lambda wv . w)$?

### Answer

$z$
