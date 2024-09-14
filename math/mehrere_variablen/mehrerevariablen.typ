#import "@preview/sourcerer:0.2.1": code
#import "@preview/physica:0.9.3": *

#align(center, text(24pt)[
  *Definition und Visualisierung*
  ])

#align(center)[
  Oliwier Przewlocki \
  Technologisches Gewerbemuseum \
  #link("mailto:oprzewlocki@student.tgm.ac.at")
  ]

#set heading(numbering: "1.")


#show par: set block(spacing: 0.65em)
#set par(
  first-line-indent: 1em,
  justify: true,

  )

#pagebreak()

#outline()

#pagebreak()


#show: rest => columns(2, rest)

= Definition und Visualisierung

== Def. n unabhängige Variablen
Unter einer reellen Funktion $f$ in $n$ unabhängigen Variablen versteht man eine Zuordnungsvorschrift $f$, die jedem geordneten n-tupel $(x_1, x_2, ..., x_n)$ reeller Zahlen aus einer Definitionsmenge D *genau eine* reelle Zahl $z$ aus einer Wertemenge W zuordnet:

$ f: (x_1, x_2, ..., x_n) |-> z=f(x_1,x_2, ..., x_n) $

== Def. zwei unabhängige Variablen

Unter einer reellen Funktionen $f$ in zwei unabhängigen Variablen vesteht man eine Zuordnungsvorschrift $f$, die jedem geordneten Zahlenpaar $(x,y)$ reeller Zahlen *genau eine* reele Zahl $z$ zuordnet: 

$ f: (x,y) |-> z ) f(x,y) $

x und y heißen unabhängige Variablen oder Argumente der Funktion, $z$ heißt abhängige Variable oder Funktionswert. Man schreibt auch: $z=f(x,y)$

== Visualisierung in zwei Variablen

#image(
  "./imgs/3d_function.png"
  )

Wenn im dreidimensionalen Raum jedem Punkt der x-y Ebene eine Höhe und daher einen Raumpunkt zugeordnet wird, erhält man insgesamt eine *Ebene*

=== Aufgabe 2.11)

==== a)

$ f(a,b) = a times b^2 +c $

Die unabhängigen Variablen sind $a$ und $b$

==== b)

$ s(v,t) = - g/2 times t^2 + v times t + s_0  $

Die unabhängigen Variablen sind $v$ und $t$

=== Aufgabe 2.19)

1) $arrow$ C),
2) $arrow$ B),
3) $arrow$ D),
4) $arrow$ A)

= 2.4 Partielle Ableitung erster Ordnung

== Definition

Unter einer *Partiellen Ableitung* einer reellen Funktion in 2 Variablen $f(x,y)$ versteht man die Ableitung nach einer der Variablen. Es wird (unter Anwendung der üblichen Ableitungsregeln) nach dieser Variable abgeleitet, die andere Variable wird als Konstante aufgefasst.

$ pdv(,x) f(x,y) = pdv(f(x,y),x) = pdv(f,x) = pdv(z,x) = f_x(x,y) $

== Aufgabe 2.21)

$ f(x,y) = x^2 times cos(y) + y^2 $

Lösung:
$ f_x(x,y) = 2x times cos(y) $
$ f_y(x,y) = -x^2 times sin(y) + 2y $

== Aufgabe 2.24)

=== c)

$ z= 5 x y + 3 y^4 - 6x^2 y^2 $

$ f_x = 5y - 12x y^2 $
$ f_y = 5x + 12y^3 - 12x^2y $

== Aufgabe 2.25)

=== c)

$ z = 4x + y^2/x - 6/y + 4 $

$ f_x = 4 - y^2/x^2 $
$ f_y = (2y)/x + 6/y^2 $

== Aufgabe 2.27

=== c)

$ z = sqrt(3x^2y + 2x y^2) $

$ f_x = (2y^2 + 6 x y)/(2 sqrt(2 x y^2 + 3 x^2 y)) $

$ f_y = (4 x y + 3 x^2)/(2 sqrt(2 x y^2 + 3 x^2 y)) $

= 2.5 Partielle Ableitung zweiter Ordnung

$ pdv(,y) f_x (x,y) = pdv(f_x(x,y),y) = pdv(,y) (pdv(f,x)) = f_(x y) (x,y)$


== Satz von Schwarz

Sind die gemischt-partiellen Ableitungen in einer Umgebung der Stelle $(x_0,y_0)$ stetig, so sind sie in dieser Umgebung *einander gleich*.


= Extremwertberechnung

Am Anfang einer Kurvendiskussion ist die erste und zweite Ableitung vernünftig. Danach bestimmt man die *Definitionsmenge* von $y=f(x)$. Der nächste Schritt ist die bestimmung der *Nullstellen* $f(x)=0 arrow N_1(x_(N 1)|0), N_2(N_(N 1)|0)$. Danach kommt die Berechnung der *lokalen Extremwerten*:

$ f'(x) = 0 arrow x_(E 1), x_(E 2), ... $

$ f'' (x_E) < 0 arrow text("Maxmium") $ 
$ f'' (x_E) > 0 arrow text("Minimum") $

Zuletzt kommen Globale Extrema, Wendepunkte und Wendetangenten


