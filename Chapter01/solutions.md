## Intermission: Equivalence Exercises

**Exercise 1.** $\lambda xy . xz$ is equivalent to:

**(a)** $\lambda xz . xz$

**(b)** $\lambda mn . mz$

**(c\)** $\lambda z . (\lambda x . xz)$

> $\lambda xy . xz \equiv_{\alpha} \lambda mn . mz$ with $x \mapsto m$ and $y
> \mapsto m$.

**Exercise 2.** $\lambda xy . xxy$ is equivalent to:

**(a)** $\lambda mn . mnp$

**(b)** $\lambda x . (\lambda y . xy)$

**(c\)** $\lambda a . (\lambda b . aab)$

> $\lambda xy . xxy \equiv \lambda x . (\lambda y . xxy)$ by making the
> currying explicit. $\lambda x . (\lambda y . xxy) \equiv_{\alpha} \lambda a .
> (\lambda b . aab)$ with $x \mapsto a$ and $y \mapsto b$.

**Exercise 3.** $\lambda xyz . zx$ is equivalent to:

**(a)** $\lambda x . (\lambda y . (\lambda z . z))$

**(b)** $\lambda tos . st$

**(c\)** $\lambda mnp . mn$

> $\lambda xyz . zx \equiv_{\alpha} \lambda tos . st$ with $x \mapsto t$, $y
> \mapsto o$, and $z \mapsto s$.

## 1.11 Exercises

**Combinators** Determine if each of the following are combinators or not.

**1.** $\lambda x . xxx$

> Yes.

**2.** $\lambda xy . zx$

> Nope, $z$ is free.

**3.** $\lambda xyz . xy (zx)$

> Yes.

**4.** $\lambda xyz . xy (zxy)$

> Yes.

**5.** $\lambda xy . xy (zxy)$

> Nope, $z$ is free.

**Normal form or diverge?** Determine if each of the following can be reduced
to normal form or if they diverge.

**1.** $\lambda x . xxx$

> Already in normal form. It's irreducible.

**2.** $(\lambda z . zz) (\lambda y . yy)$

> After $\beta$-reduction, we get $(\lambda y . yy) (\lambda y . yy)
> \equiv_{\alpha} (\lambda z . zz) (\lambda y . yy)$ with $y \mapsto z$, so
> this diverges.

**3.** $(\lambda x . xxx) z$

> This reduces to $zzz$.

**Beta reduce** Evaluate (that is, beta reduce) each of the following
expressions to normal form.

**1.** $(\lambda abc . cba) zz (\lambda wv . w)$

\begin{align*}
                             & (\lambda abc . cba) zz (\lambda wv . w) \\
[\text{currying}] \quad      & (\lambda a . \lambda b . \lambda c . cba) zz (\lambda w . \lambda v . w) x \\
[x := z] \quad               & (\lambda b . \lambda c . cbz) z (\lambda w . \lambda v . w) \\
[y := z] \quad               & (\lambda c . czz) (\lambda w . \lambda v . w) \\
[z := (\lambda v . w)] \quad & (\lambda w . \lambda v) zz \\
[w := z] \quad               & (\lambda v . z) z \\
[v := z] \quad               & z
\end{align*}

**2.** $(\lambda x . \lambda y . xyy) (\lambda a . a) b$

\begin{align*}
                             & (\lambda x . \lambda y . xyy) (\lambda a . a) b \\
[x := (\lambda a . a)] \quad & (\lambda y . (\lambda a . a) yy) b \\
[y := b] \quad               & (\lambda a . a) bb \\
[a := b] \quad               & bb
\end{align*}

**3.** $(\lambda y . y) (\lambda x . xx) (\lambda z . zq)$

\begin{align*}
                              & (\lambda y . y) (\lambda x . xx) (\lambda z . zq) \\
[y := (\lambda x . xx)] \quad & (\lambda x . xx) (\lambda z . zq) \\
[x := (\lambda z . zq)] \quad & (\lambda z . zq) (\lambda z . zq) \\
[z := (\lambda z . zq)] \quad & (\lambda z . zq) q \\
[z := q] \quad                & qq
\end{align*}

**4.** $(\lambda z . z) (\lambda z . zz) (\lambda z . zy)$

Hint: $\alpha$-equivalence.

\begin{align*}
                              & (\lambda z . z) (\lambda z . zz) (\lambda z . zy) \\
[z := (\lambda z . zz)] \quad & (\lambda z . zz) (\lambda z . zy) \\
[z := (\lambda z . zy)] \quad & (\lambda z . zy) (\lambda z . zy) \\
[z := (\lambda z . zy)] \quad & (\lambda z . zy) y \\
[z := y] \quad                & yy
\end{align*}

**5.** $(\lambda x . \lambda y . xyy) (\lambda y . y) y$

\begin{align*}
                             & (\lambda x . \lambda y . xyy) (\lambda y . y) y \\
[y := (\lambda y . y)] \quad & (\lambda y . (\lambda y . y) yy) y \\
[y := y] \quad               & (\lambda y . y) yy \\
[y := y] \quad               & yy
\end{align*}

**6.** $(\lambda a . aa) (\lambda b . ba) c$

\begin{align*}
                              & (\lambda a . aa) (\lambda b . ba) c \\
[a := (\lambda b . ba)] \quad & (\lambda b . ba) (\lambda b . ba) c \\
[b := (\lambda b . ba)] \quad & ((\lambda b . ba) a) c \\
[b := a] \quad                & aac
\end{align*}

**7.** $(\lambda xyz . xz (yz)) (\lambda x . z) (\lambda x . a)$

\begin{align*}
& (\lambda xyz . xz (yz)) (\lambda x . z) (\lambda x . a) \\
[\text{currying}] \quad & (\lambda x . \lambda y . \lambda z . xz (yz)) (\lambda x . z) (\lambda x . a) \\
[z \mapsto_{\alpha} s] \quad & (\lambda x . \lambda y . \lambda s . xs (ys)) (\lambda x . z) (\lambda x . a) \\
[x := (\lambda x . z)] \quad & (\lambda y . \lambda s . (\lambda x . z) s (ys)) (\lambda x . a) \\
[y := (\lambda x . a)] \quad & (\lambda s . (\lambda x . z) s ((\lambda x . a) s)) \\
[x := s] \quad & (\lambda s . z ((\lambda x . a) s)) \\
[x := s] \quad & \lambda s . z a
\end{align*}
