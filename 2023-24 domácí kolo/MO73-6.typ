#set text(size: 13pt)
#set page(
  numbering: "1 / 1",
  header: [
    #set text(10pt)
    #place(dx: -40pt, dy: 20pt)[
      Vojtěch Křižan \
      \4. E, GFPVM \
      `B-I-6`
    ]
  ],
)

#let doteq = "\u{2250}"

#align(center)[Rozhodněte, zda lze čtvercovou tabulku 4 #sym.times 4 vyplnit navzájem různými \ přirozenými čísly od 1 do 16 tak, že v každém řádku i každém sloupci \ existuje číslo, jehož sedminásobek je součtem zbylých tří čísel.]

= Úvod

Každý řádek $n$ čtvercové tabulky vypadá následovně:

#align(center)[#table(
  $a_n$, $b_n$, $c_n$, $d_n$,
  columns: (25pt, 25pt, 25pt, 25pt),
  rows: (25pt),
  align: horizon,
)]

Číslo, jehož sedminásobek je roven součtu ostatních čísel v řádku bude vždycky $a_n$:

$ 7 dot a_n = b_n + c_n + d_n $

A součet čísel v řádku označíme $s_n$:

$
  s_n &= a_n + b_n + c_n + d_n \
  s_n &= a_n + 7 dot a_n \
  s_n &= 8 dot a_n \
$

= Součet celé tabulky

V tabulce jsou přirozená čísla od 1 do 16, takže k najití součtu můžeme využít vzoreček pro součet přirozených čísel od 1 do $n$:

$ s = (n dot (n + 1)) / 2 = (16 dot 17) / 2 = 136 $

Součet celé tabulky se samozřejmě rovná součtu všech řádků:

$
  s_1 + s_2 + s_3 + s_4 = s &= 136 \
  8 dot a_1 + 8 dot a_2 + 8 dot a_3 + 8 dot a_4 &= 136 \
  8 dot (a_1 + a_2 + a_3 + a_4) &= 136 \
  a_1 + a_2 + a_3 + a_4 &= 17
$

#pagebreak()

= Ohraničení $a_n$

$ a_n = (b_n + c_n + d_n) / 7 $

Největší čísla, která můžeme dosadit za $b_n$, $c_n$, a $d_n$ jsou 14, 15, a 16:

$
  a_n &<= (14 + 15 + 16) / 7 \
  a_n &<= 6.4 \
$

A vzhledem k tomu, že $a_n$ je přirozené, tak horní hranice pro $a_n$ je 6.

$ a_n <= 6 $

Kdyby bylo $a_n$ rovno 1, tak nejmenší čísla, která můžeme dosadit za $b_n$, $c_n$, a $d_n$ jsou 2, 3, a 4. Jejich součet ($2 + 3 + 4 = 9$) však přesahuje sedminásobek $a_n$ ($7 dot 1 = 7$).

$ a_n != 1 $

Takže nám nakonec zbyde jen 5 možností pro $a_n$:

$ a_n in {2, 3, 4, 5, 6} $


Pořád platí, že čísla v tabulce musí být různá, tím pádem i $a_n$ musí být různá. Jaká musí tedy být jednotlivá $a_n$? Vybíráme 4 čísla z 5prvkové množiny ${2, 3, 4, 5, 6}$, jejichž součet musí být roven 17, takže stačí zjistit, které číslo vynecháme.

$ 2 + 3 + 4 + 5 + 6 = 20 $

$ 20 - 17 = 3 $

Vynecháváme 3, takže pro $a_n$ zbývá:

$ a_n in {2, 4, 5, 6} $

Označme si nejmenší z nich:

$ a_1 = 2 $

#pagebreak()

= Finiš

Vyjma $a_n$ nám do tabulky zbývá dát:

$
  b_n, c_n, d_n &in {1, ..., 16} - {2, 4, 5, 6} \
  b_n, c_n, d_n &in {1, 3} union {7, ..., 16} \
$

Jediné $b_n$, $c_n$, a $d_n$, rovnající se sedminásobku $a_1$ (14) jsou 1, 3, a 10. Proč? Kdyby bylo nejmenší číslo součtu 7 (nebo i vyšší číslo), tak nemáme šanci najít další 2 čísla aby součet vycházel 14. Takže tam musí být něco menšího než 7 (1 nebo 3). Trojici poté nalézáme metodou pokus - omyl.

$
  7 dot a_1 &= b_1 + c_1 + d_1 \
  7 dot 2 &= 1 + 3 + 10 \
  14 &= 14 \
$

Jenže my potřebujeme ještě jednu trojici (otazníky) se součtem 14, protože i součet sloupce musí být roven sedminásobku $a_1$.

#align(center)[#table(
  $a_1$, $b_1$, $c_1$, $d_1$,
  [?], [], [], [],
  [?], [], [], [],
  [?], [], [], [],
  columns: (25pt, 25pt, 25pt, 25pt),
  rows: (25pt),
  align: horizon,
)]

Za ? nemůžeme použít jiné $a_n$, protože ty máme celkově jenom 4, takže kdybychom jedno z nich dali do sloupce společně s $a_1$, tak bude v jiném sloupci $a_n$ chybět.

Takže čtvercovou tabulku 4 #sym.times 4 NELZE vyplnit navzájem různými přirozenými čísly od 1 do 16 tak, že v každém řádku i každém sloupci existuje číslo, jehož sedminásobek je součtem zbylých tří čísel. $qed$
