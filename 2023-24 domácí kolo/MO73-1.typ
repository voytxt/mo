#set text(size: 13pt)
#set page(
  numbering: "1 / 1",
  header: [
    #set text(10pt)
    #place(dx: -40pt, dy: 20pt)[
      Vojtěch Křižan \
      \4. E, GFPVM \
      `B-I-1`
    ]
  ],
)

#align(center)[Kolik neprázdných podmnožin množiny ${0, 1, ..., 9}$ má součet prvků dělitelný třemi?]

= Úvod

Máme množinu $A = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9}$, hledáme počet neprázdných podmnožin, kde součet prvků je dělitený třemi, tohle hledané číslo si označíme jako $x$.

= Ohraničení problému

Nejprve zkusíme určit horní hranici $n$. Počet jedinečných podmnožin v množině o $n$ prvcích je $2^n$ (každý prvek buď v podmnožině je, nebo není). Množina $A$ má 10 prvků, tím pádem počet všech podmnožin je roven $2^10 = 1024$; $n$ nemůže být větší.

Vzhledem k tomu, že se bavíme o _počtu_ něčeho, tak $n$ musí být nezáporné celé číslo. Tím pádem dostáváme:

$ n in ZZ and 0 <= n <= 1024 $

= Dělitelnost (nejen) třemi

Všechna čísla z množiny $A$ mají po dělení číslem 3 zbytek, a to buď 0, 1, nebo 2. Takže můžeme množinu rozsekat na 3 díly následovně.

$
  A_0 &= {0, 3, 6, 9} \ 
  A_1 &= {1, 4, 7} \ 
  A_2 &= {2, 5, 8} \
$

Když máme nějaké číslo a přičteme k němu číslo z $A_0$, tak se zbytek nezmění. Takže čísla z $A_0$ můžeme přidávat a oddělávat jak se nám zachce, a dělitelnost 3 výsledného souču prvků se nezmění. Počet podmnožin $A_0$, kde součet prvků je dělitelný 3 je roven počtu všech podmnožin:

$ x_A_0 = 2^4 = 16 $

Zbylé čísla dáme do $A'$:

$ A' = A - A_0 = A_1 + A_2 =  {1, 2, 4, 5, 7, 8} $

= Sudoprvkové podmnožiny $A'$

Pokud chceme aby součet dvou čísel z množiny $A'$ byl dělitelný 3. Musíme vzít jedno číslo, patřící do množiny $A_1$ a druhé, co patří do množiny $A_2$. Pro dvouprvkovou množinu je těhle možností 9 (pro každé ze 3 čísel z množiny $A_1$ existují 3 možnosti z množiny $A_2$).

Pro čtyřprvkovou množinu je možností taky 9 (pro každou dvouprvkovou množinu z předchozí věty existuje právě jedna čtyřprvková množina, která nemá s tou dvouprvkovou nic společného).

Pro šestiprvkovou a bezprvkovou množinu je možnost pouze 1.

Celkový počet podmnožin $A'$ se sudým počtem prvků a se součtem děliteným 3 je:

$ x_A'_1 = 9 + 9 + 1 + 1 = 20. $

= Lichoprvkové podmnožiny $A'$

Nesmíme však zapomenout ještě na podmnožiny s lichým počtem prvků, jejichž součet je dělitelný 3. Ty existují právě 2, a to: ${1, 4, 7}$ a ${2, 5, 8}$.

$ x_A'_2 = 2 $

= Finále

Celkový počet podmnožin $A'$, s prvkovým součetem dělitelným 3, je roven $x_A' = x_A'_1 + x_A'_2 = 20 + 2 = 22 $

Vzhledem k tomu že množiny z $A_0$ a $A'$ můžeme kombinovat jak chceme, tak výsledné $x$ bude popsáno součinem $x_A_0$ a $x_A'$. Jen však nesíme zapomenout odečíst jedničku (prázdná množina).

$ x = x_A_0 dot x_A' - 1 = 16 dot 22 - 1 = 351 $

= Ověření

Naše vypočítané $x$ lze samozřejmě ověřit algoritmicky v TypeScriptu:

```ts
const subsets: number[][] = [[]];
let x = 0;

for (const num of [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]) {
  subsets.forEach((subset) => {
    subsets.push([...subset, num]);
  });
}

subsets.forEach((subset) => {
  const sum = subset.reduce((a, b) => a + b, 0);
  if (sum % 3 === 0) x++;
});

console.log(x - 1); // 351
```
