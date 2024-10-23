#import "@preview/cetz:0.3.1"

#set text(size: 16pt)
#set page(
  numbering: "1 / 1",
  header: [
    #set text(12pt)
    #place(dx: -40pt, dy: 20pt)[
      Vojtěch Křižan \
      \5. E, GFPVM \
      `A-I-2`
    ]
  ],
)


BÚNO bude první kostka v prvním řádku a bude mít číslo $1$ na zadní straně, $2$ na levé straně a na horní straně $3$. To bude mít za příčinu střídání čísel $2$ a $5$ podélně a čísel $6$ a $1$ svisle:

#set rect(width: 100%, height: 100%)

#align(
  center,
  grid(
    columns: (30pt, 30pt, 30pt, 30pt, 30pt, 30pt, 30pt, 30pt),
    rows: 30pt,
    align: center + horizon,
    [], $1$, [], [], [], [], [], [],
    $2$, rect($3$), $5$, rect(), $2$, rect(), $5$, $dots.c$,
    [], $6$, [], [], [], [], [], [],
    [], rect(), [], rect(), [], rect(), [], [],
    [], $1$, [], [], [], [], [], [],
    [], rect(), [], rect(), [], rect(), [], [],
    [], $6$, [], [], [], [], [], [],
    [], $dots.v$,
  ),
)

Pokusme se vyplnit horní strany kostek prvního řádku BÚNO (mohl by to být libovolný řádek, či sloupec) co nejvíce čísly. Máme celkově 4 možnosti čísel ($1$, $3$, $4$, $6$), protože $2$ a $5$ jsou vždy na levé a pravé straně kostky a neexistuje kostka která má stejná čísla na různých stranách. Řešení může vypadat následovně:

#align(
  center,
  grid(
    columns: (30pt, 30pt, 30pt, 30pt, 30pt, 30pt, 30pt, 30pt, 30pt, 30pt),
    rows: 30pt,
    align: center + horizon,
    [], $1$, [], $1$, [], $3$, [], $3$, [], [],
    $2$, rect($3$), $5$, rect($4$), $2$, rect($6$), $5$, rect($1$), $2$, $dots.c$,
    [], $6$, [], $6$, [], $4$, [], $4$, [], [],
    [], rect(), [], rect(), [], rect(), [], rect(), [], [],
    [], $1$, [], $1$, [], $3$, [], $3$, [], [],
    [], rect(), [], rect(), [], rect(), [], rect(), [], [],
    [], $6$, [], $6$, [], $4$, [], $4$, [], [],
    [], $dots.v$, [], $dots.v$, [], $dots.v$, [], $dots.v$,
  ),
)

Ještě se zbývá pokusit umístit zbývající čísla $2$ a $5$, jenže kam? Aby se na horní straně kostky objevilo číslo $2$, nebo $5$, musí být na pravé, levé, přední a zadní straně obsaženy zbylá čísla $1$, $3$, $4$, $6$. Uvažujme, že by taková #text(purple)[kostka existovala]. Víme už, že taková kostka má danou přední a zadní stranu párem číslic BÚNO $1$ a $6$ (protože každá kostka která není v prvním řádku má jasně danou horní a dolní stranu díky první kostce ve sloupci). Levá a pravá strana takové kostky by tedy byla dvojice čísel $3$ a $4$. Tím pádem všechny kostky na řádku musejí mít na pravé a levé straně tuto dvojici. Jenže neexistuje řádek, který nemá alespoň 2 kostky, které už tuto dvojici nemají na přední a zadní straně. Takovou kostku tedy do žádného řádku přidat nelze a tím pádem nelze ani navýšit počet čísel na horních stranách kostek.

#align(
  center,
  grid(
    columns: (30pt, 30pt, 30pt, 30pt, 30pt, 30pt, 30pt, 30pt, 30pt, 30pt),
    rows: 30pt,
    align: center + horizon,
    [], $1$, [], $1$, [], $3$, [], $3$, [], [],
    $2$, rect($3$), $5$, rect($4$), $2$, rect($6$), $5$, rect($1$), $2$, $dots.c$,
    [], $6$, [], $6$, [], $4$, [], $4$, [], [],
    $4$,
    rect(),
    $3$,
    text(purple, rect(stroke: purple, $2$)),
    text(red, $4$),
    rect(),
    text(red, $3$),
    rect(),
    text(red, $4$),
    $dots.c$,

    [], $1$, [], $1$, [], $3$, [], $3$, [], [],
    [], rect(), [], rect(), [], rect(), [], rect(), [], [],
    [], $6$, [], $6$, [], $4$, [], $4$, [], [],
    [], $dots.v$, [], $dots.v$, [], $dots.v$, [], $dots.v$,
  ),
)

Nejvíce se tedy mohou vyskytnout $4$ různá čísla na horních stěnách kostek.