#import "/jmlr.typ": jmlr, theorem, proof
#let authors = (
  (name: "Wingate Peaslee", affl: "one", email: ""),
)
#let affls = (
  one: (
    department: "Department of Political Economy",
    institution: "Miskatonic University",
    location: "Arkham, MA",
    country: "USA",
  ),
)


#show: jmlr.with(
  title: [Paper Template],
  authors: (authors, affls),
  abstract: "
  The quick brown fox jumps over the lazy dog.
  ",
  keywords: ("kw1",),
  bibliography: bibliography("main.bib"),
  // appendix: include "appendix.typ",
)

// #set math.equation(numbering: "(1)")

= Introduction

Here is a citation @chow68.


== scripting

```typst
#for c in "ABC" [#c is a letter. ]
```
generates #for c in "ABC" [#c is a letter. ]

```typst
#let n = 2
#while n < 10 {
  n = (n * 2) - 1
  (n,)
}
```

generates
#let n = 2
#while n < 10 {
  n = (n * 2) - 1
  (n,)
}

== math

$ v := vec(1, 2, k) $
The binomial theorem is $ (x+y)^n=sum_(k=0)^n binom(n, k) x^k y^(n-k). $
A favorite sum of most mathematicians is $ sum_(n=1)^oo 1/n^2 = pi^2 / 6. $
Likewise a popular integral is $ integral_(-oo)^oo e^(-x^2) dif x = sqrt(pi) $

#theorem[The square of any real number is non-negative.]

#figure(
  image("fig.jpg", width: 100%),
  caption: [A curious figure.],
)

== boilerplate


