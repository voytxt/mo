#set text(size: 16pt)
#set page(
  numbering: "1 / 1",
  header: [
    #set text(12pt)
    #place(dx: -40pt, dy: 20pt)[
      Vojtěch Křižan \
      \5. E, GFPVM \
      `A-I-3`
    ]
  ],
)

Nechť

- $p$ je počet čísel na tabuli, který se snažíme maximalizovat
- $n$ je přirozené číslo menší nebo rovno $p$
- $a_n$ je $n$-té přirozené číslo na tabuli
- $S_n$ je součet prvních $n$ čísel:
$
  S_1 &= a_1 & quad (1) \
  S_n &= a_n + S_(n-1) & quad (2) \
  S_p &= 2024 & quad (3)
$
- $k_n$ je koeficient $n$-tého čísla (pozor: $k_1$ není definováno)
$ a_n &= k_n dot S_(n-1) & quad (4) $

#line(length: 100%)

Podle $(2)$ platí:

$ S_n = a_(n) + S_(n-1) $

Dosaďme za $a_n$ podle $(4)$:

$ S_n = k_n dot S_(n-1) + S_(n-1) $

Po vytknutí dostáváme vztah:

$ S_n = (k_n + 1) dot S_(n-1) $

Tenhle proces můžeme zopakovat pro $S_(n-1)$:

$ S_n = (k_n + 1) dot (k_(n-1) + 1) dot S_(n-2) $

Tak to bude pokračovat dokud na konci nebude $S_1$:

$ S_n = (k_n + 1) dot (k_(n-1) + 1) dot ... dot (k_2 + 1) dot S_1 $

Podle $(1)$ dostáváme výsledný vztah:

$ S_p = a_1 dot product_(i=2)^n (k_i + 1) $

$a_1$ je přirozené číslo, ale $(k_i + 1)$ musí být vždy $>= 3$ (viz `N1`). Našim úkolem je mít co nejvíce členů. Podle $(4)$ je $S_p = 2024 = 2^3 dot 11 dot 23$. To nám dává následující 2 řešení:

$
  1) space 2024 &= 1 dot 2^3 dot 11 dot 23 => a_1 = 1; k in {7, 10, 22} \
  2) space 2024 &= 2 dot 2^2 dot 11 dot 23 => a_1 = 2; k in {3, 10, 22} \
$

V 1. řešení nemůžeme rozdělit $2^3$ na více členů $(k_i + 1)$, protože pak by minimálně jeden z nich byl roven $2$, což je v rozporu s výše uvedenou podmínkou. Můžeme maximálně vzít $2$ z $2^3$ a dosadit ji za $a_1$ - tím dostáváme 2. řešení. Ještě můžeme dopočítat oboje řešení a vyzkoušet zda jsou doopravdy korektní:

$
  1) space & 1, 7, 80, 1936 \
  2) space & 2, 6, 80, 1936 \
$

Tím dostáváme naši odpověď: na tabuli mohou být nanejvýš 4 čísla.
