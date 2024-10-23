#set text(size: 13pt)
#set page(
  numbering: "1 / 1",
  header: [
    #set text(10pt)
    #place(dx: -40pt, dy: 20pt)[
      Vojtěch Křižan \
      \4. E, GFPVM \
      `B-I-2`
    ]
  ],
)

#let podminky(body) = {
  box(
    stroke: 1pt,
    outset: 5pt,
    body
  )
}

#let colorBlue(x) = text(fill: blue, $#x$)

#align(center)[
  Pro reálná čísla $a, b, c$ platí
  $ a / (b+c) = b / (c+a) = c / (a+b) $

  Určete všechny možné hodnoty výrazu
  $ (a^3 + b^3 + c^3) / ((b+c)^3 + (c+a)^3 + (a+b)^3) $
]


= Začátek

Vezměme si první část podmínek ze zadání.

$
  a / (b+c) &= b / (c+a) \
  a^2 - b^2 &= b c - a c \
  (a+b)dot (a-b) &= c dot (b-a) \
  (a+b)dot (a-b) - c dot (b-a) &= 0 \
  (a-b) dot (a+b+c) &= 0 \
$

$ #podminky($a = b or a + b + c = 0$) $

Takže pokud $a!=b$, tak $a+b+c=0$.

= Dosazení pokud $a!=b$
Z $a+b+c=0$ vyplývá, že $c=-a-b$ a $b=-a-c$. Pomocí těchto vztahů můžeme zjednodušit jmenovatel.

$
  x &= (a^3 + b^3 + c^3) / ((b+colorBlue(c))^3 + (colorBlue(c)+a)^3 + (a+colorBlue(b))^3) \
  x &= (a^3 + b^3 + c^3) / ((-a)^3 + (-b)^3 + (-c)^3) \
  x &= -1 \
$

Takže pokud $a!=b$, tak $x=-1$.

#pagebreak()

= Dosazení pokud $a=b$

Tady nemáme dostatečně informací pro určení $x$, tak zkusíme použít ještě druhou část první rovnice. Dosadíme za $b$ a vychází nám kvadratická rovnice.

$
  a / (colorBlue(b)+c) = c / (a+colorBlue(b)) \
  2a^2 - c a - c^2 = 0 \
$

Kvadratickou rovnici vyřešíme pomocí vzorce, kde kvadratický koeficient je $2$, lineární koeficient je $-c$, a absolutní člen $-c^2$.

$
  a = (c plus.minus sqrt((-c)^2-4 dot 2 dot (-c^2))) / (2 dot 2) = (c plus.minus 3c) / 4 \
  a in { c, -c/2 } \
$

To by nám mohlo stačit, pojďme postupně dosadit oboje hodnoty.

== Dosazení pokud $a=b and a=c$

Za $b$ i $c$ můžeme do výrazu dosadit $a$, a vychází nám další řešení.

$ x = (a^3 + a^3 + a^3) / ((a+a)^3 + (a+a)^3 + (a+a)^3) = 1/8 \ $

== Dosazení pokud $a=b and a=-c/2$

Z $a=-c/2$ vyplývá $c=-2a$, a s tím se bude lépe počítat (není tam zlomek).

$ x = (a^3 + a^3 + (-2a)^3) / ((a-2a)^3 + (a-2a)^3 + (a+a)^3) = -1 $

Takže pokud $a=b$, tak $x in {-1, 1/8}$.

= Finiš

Hodnoty, které může výraz nabývat jsou $-1$ a $1/8$.

// #pagebreak()

// = Dosazení

// $ (a^3 + b^3 + c^3) / ((b+c)^3 + (c+a)^3 + (a+b)^3) $
// $ k = a / (b+c) = b / (c+a) = c / (a+b) $

// // $
// //   3k &= a / (b+c) + b / (c+a) + c / (a+b) \
// //   3k &= (a dot (a+c) + b dot (b+c)) / ((a+c) dot (b+c)) + c / (a+b)
// // $

// // $
// //   k^3 &= (a b c) / ((b+c) dot (c+a) dot (a+b)) \
// //   k^3 &= (a b c) / (a^2 b + a^2 c + a b^2 + 2 a b c + a c^2 + b^2 c + b c^2) \
// // $

// // $
// //   (a^3 + b^3 + c^3) / ((b+c)^3 + (c+a)^3 + (a+b)^3) \
// //   (a^3 + b^3 + c^3) / ((b^3+3b^2c+3b c^2+c^3) + (c^3+3c^2a+3c a^2+a^3) + (a^3+3a^2b+3b a^2+b^3)) \
// //   (a^3 + b^3 + c^3) / (2a^3+2b^3+2c^3 + 3b^2c+3b c^2 + 3c^2a+3c a^2 + 3a^2b+3b a^2) \
// //   (a^3 + b^3 + c^3) / (2 dot (a^3+b^3+c^3) + 3 dot (b^2c+b c^2 + c^2a+c a^2 + a^2b+b a^2)) \
// // $

// = a = 1

// $ 1 / (b+c) = b / (c+1) = c / (1+b) $

// $b$ can't be $-1$, because $b != -a$

// $
//   1 / (b+c) &= b / (c+1) \
//   1 dot (c+1) &= b dot (b+c)  \
//   c + 1 &= b^2 + c \
//   b^2 &= 1 \
//   b &= 1 space #podminky($b != -a$) \
// $

// $ a = 1 => b = 1 and c in {-2, 1} $

// = a = 2

// $ 2 / (b+c) = b / (c+2) = c / (2+b) $

// // $b$ can't be $-1$, because $b != -a$

// $
//   2 / (b+c) &= b / (c+2) \
//   2 dot (c+2) &= b dot (b+c) \
//   2c + 2 &= b^2 + c \
//   b^2 +c + 2 &= 0
// $

// $ a = 1 => b = 1 and c in {-2, 1} $



// // = Poznámky

// // Pro reálná čísla platí $a/(b+ 1) = b/(a+ 1)$. Dokažte, že čísla a, b jsou stejná nebo se jejich součet rovná -1.

// // $
// //   a dot (a+1) &= b dot (b+1) \
// //   a^2 + a &= b^2 + b \
// //   a^2 - b^2 &= b - a \
// //   (a+b)(a-b) &= (b-a) \
// //   \ \ \

// //   (a+b)(a-b) - (b-a) &= 0 \
// //   (-a-b)(a-b) - (a-b) &= 0 \
// //   (a-b)(-a-b-1) &= 0 \
// //   (b-a)(a+b+1) &= 0 \
// //   (a+b)(a+b+1) &= 0 \

// //   \ \ \
// //   // (-1)(a + b)(a-b) &= (a - b) \
// //   // (-1)(a+b) &= 1 \
// //   // -a-b &= 1 \
// //   // a + b &= -1 \
// // $

// // #pagebreak()

// // Pro reálná čísla $a, b, c$ platí $a/b = b/c = c/a$. Určete všechny možné hodnoty
// // součtu $a/(b+c)+b/(c+a)+c/(a+b)$.

// // a = 1 \
// // b = 1 \

// // $
// //   a = b = c != 0

// // $

// // $
// //   a, b, c != 0 \
// //   a\/b &= b\/c \
// //   // a\/b^2 &= c \ \ \
// //   a c &= b^2 \
// //   b^2 - a c &= 0 \
// //   c^2 - a b &= 0 \
// //   a^2 - b c &= 0 \
// // $
