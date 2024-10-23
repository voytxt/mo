#set text(size: 13pt)
#set page(
  numbering: "1 / 1",
  header: [
    #set text(10pt)
    #place(dx: -40pt, dy: 20pt)[
      Vojtěch Křižan \
      \4. E, GFPVM \
      `B-I-4`
    ]
  ],
)

#let colorBlue(x) = text(fill: blue, $#x$)

#align(center)[
  Rozhodněte, zda existuje pětice přirozených čísel

  #block(
    align(left)[
      + $a$, $a$, $a$, $a$, $b$ $(a != b)$,
      + $a$, $a$, $b$, $b$, $c$ $(a != b != c != a)$,
    ]
  )

  v níž je každé z těchto čísel dělitelem součtu každých tří ze zbylých čtyř čísel.
]

= První úkol

Nejprve převedeme češtinářskou omáčku do matematické podoby. Každé z čísel (takže $a$ a $b$) má být dělitelem součtu každých tří ze zbylých čtyř čísel. Tohle jsou všechny možnosti:

$ (a+a+a)/a in NN and (a+a+b)/a in NN and (a+a+a)/b in NN $

$(a+a+a)/a in NN$ nám ale nic neříká, protože tento  výrok platí pro libovolné $a$:

$
  (a + a + a) / a &in NN \
  (3 dot cancel(a)) / cancel(a) &in NN \
  3 &in NN \
$

Takže nám zbývá: $(a+a+b)/a in NN and (a+a+a)/b in NN$.

Zkusme za $a$ dosadit $1$. Všechna čísla jsou dělitelem jedničky, tím pádem bude $(a+a+b)/a in NN$ určitě platit. Zbývá tedy splnit poslední podmínku:

$
  (a+a+a)/b &in NN \
  (1+1+1)/b &in NN \
  3 / b &in NN \
$

Takže pro $a=1$ musí být $b$ rovno násobku tří, třeba zrovna $3$. Tím pádem ano, existuje pětice přirozených čísel které splňují první úkol.

#pagebreak()

= Drsný Důkaz Dělitenosti (DDD)

Nechť $a,n,x in NN and x \/ n in NN$.

$
  (a+x)/n &in NN \
  a/n + x/n &in NN \
$

Když přičteme k libovolnému číslu (tady $a/n$) přirozené číslo (tady $x/n$), tak se nezmění přirozenost původního čísla ($a/n$), tím pádem můžeme $x/n$ vyškrtnout. Zůstává nám:

$ a/n &in NN $

Takže *číslo $(a+x)$ je dělitené $n$ právě tehdy když je $a$ dělitené $n$*.

= Druhý úkol

Zkusme začít podobnou strategií i u úkolu druhého. Nejprve si rozepišme zadání. Všechna čísla v množině $M_n$ jsou dělitená $n$.

$
  M_a&= {a+b+b, b+b+c, a+b+c } = {a+2b, 2b+c, a+b+c} \
  M_b &= {a+a+b, a+a+c, a+b+c} = {2a+b, 2a+c, a+b+c} \
  M_c &= {a+a+b, a+b+b} = {2a+b, a+2b} \
$

Podle DDD můžeme naše množiny zredukovat. Pokud je v množině $M_x$ prvek ve formě $(a+x)$, tak ho můžeme nahradit $a$.

$
  M_a &= {colorBlue(a+2b), 2b+c, colorBlue(a+b+c)} = {colorBlue(2b), 2b+c, colorBlue(b+c)} \
  M_b &= {colorBlue(2a+b), 2a+c, colorBlue(a+b+c)} = {colorBlue(2a), 2a+c, colorBlue(a+c)} \
$

DDD zopakujeme ještě jednou. Zde například u $M_a$ vidíme, že uvnitř je $2b$, tím pádem $2b$ je dělitené $a$, takže můžeme $(2b+c)$ vyměnit za $c$.

$
  M_a &= {2b, colorBlue(2b+c), b+c} = {2b, colorBlue(c), b+c} \
  M_b &= {2a, colorBlue(2a+c), a+c} = {2a, colorBlue(c), a+c} \
$

Do třetice použijeme DDD.

$
  M_a &= {2b, c, colorBlue(b+c)} = {2a, c, colorBlue(b)} \
  M_b &= {2a, c, colorBlue(a+c)} = {2a, c, colorBlue(a)} \
$

Tady už můžeme vidět, že $a$ má být dělitené $b$, a zároveň $b$ má být dělitené $a$. Tahle situace může nastat pouze když $a=b$. V zadání je ale napsané $a!=b$, tím pádem pětice čísel, která by splňovala podmínky druhého úkolu, neexistuje.
