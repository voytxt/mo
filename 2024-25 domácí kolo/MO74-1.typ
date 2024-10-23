#set text(size: 14pt)
#set page(
  numbering: "1 / 1",
  header: [
    #set text(12pt)
    #place(dx: -40pt, dy: 20pt)[
      Vojtěch Křižan \
      \5. E, GFPVM \
      `A-I-1`
    ]
  ],
)

#align(center)[$ a, b in RR \ x = a^2+b = a+b^2 \ "Jaké je nejmenší možné" x "?" $]

#line(length: 100%)

Zkusme upravit zadanou rovnici. Buď využijeme kvadratický vzoreček přes diskriminant, anebo ji upravíme přímo:

$
  a^2 + b &= a + b^2 \
  a^2 - b^2 + b - a &= 0 \
  (a + b)(a - b) + (b - a) &= 0 \
  (a + b)(a - b) + (-1)(a - b) &= 0 \
  (a + b - 1)(a - b) &= 0 \
$

Tak či tak dostáváme rovnici v součinovém tvaru a s ní i 2 kořeny.

$ (a=b) or (a+b=1) $

Budeme se nyní snažit zjistit nejnižší možnou hodnotu $x$ pro každou ze 2 větví.

== 1. Pokud $b=a$

$ x_1 = a^2 + b = a^2 + a $

Naše parabola (funkce $f(a)=a^2+a$) se otevírá směrem nahoru, protože kvadratický člen $a^2$ má kladný koeficient. Nejnižší bod takové paraboly je tím pádem v samotném vrcholu. Pro zjištění souřadnic vrcholu stačí převést funkci na vrcholový tvar doplněním na čtverec.

$ x_1 = (a+1 / 2)^2 - 1 / 4 $

Vrchol je tedy umístěný v $[-1/2, -1/4]$. Tím pádem nejmenší možné $x_1$ je $-1/4$.

== 2. Pokud $b = 1-a$

$ x_2 = a^2 + b = a^2 - a + 1 = (a - 1 / 2)^2 + 3 / 4 $

Analogicky doplníme na čtverec a zjišťujeme, že nejmenší možné $x_2$ je $3/4$. Tím pádem nejmenší možné $x = x_1 = -1/4$.
