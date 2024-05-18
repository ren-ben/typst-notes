#align(center, text(24pt)[
  *Anwendungen der Differenzial & Integralrechnung*
  ])

#align(center)[
  Oliwier Przewlocki \
  Technologisches Gewerbemuseum \
  #link("mailto:oprzewlocki@student.tgm.ac.at")
  ]

#show: rest => columns(2, rest)

#set heading(numbering: "1.")

#show par: set block(spacing: 0.65em)
#set par(
  first-line-indent: 1em,
  justify: true,

  )

= Numerische Integration II

Man kann bestimmte Integrale ohne Analytik durch z.B. Ober- oder Untersumme lösen. Die sind aber scheiße und es gibt genauere Methoden mit denen sich dieser Teil beschäftigen wird.

== Keplersche Fassregel

Wurde für die Berechnung des Fässervolumens enwickelt.
Sie nimmt an, das jede integrierende Funktion $f(x)$ sich mit quadratische Polynomfunktion approximieren lässt, was dazu führt das für jede Funktion sich eine integrierbare Approximation bilden kann.

#figure(
  $ f(x) approx p(x) => integral_a^b f(x) d x approx integral_a^b p(x) d x$
  )

#figure(
  image("imgs/kepler.png", width: 50%),
  caption: [Rot: $p(x)$ Integriert]

  )

Für die Umsetzung muss man bedenken, dass wir eine quadratische Funktion die möglichst $f(x)$ ähnelt erstellen und dafür müssen Stützpunkte erstellt werden. Das wären die Integrationsgrenzen $[a,b]$ und deren Mitte $(a+b)/2$. Danach bekommt man 3 Punkte und die quadratische Funktion braucht 3 Punkte um modelliert zu werden. Man muss einfach die Punkte 3 mal in die Funktion:

#figure(
  $ p(x) = u x^2 + v w + w $
  )

einsetzen und schon haben wir ein Gleichungssystem der gelöst werden kann.Nach der Einsetzung und Integration ergibt sich die folgende Formel:

#figure(
  $ integral_a^b f(x) d x approx \ (b-a)/6 dot [f(a) + 4 dot f((a+b)/2)+f(b)] $,
  caption: [Die Keplersche Fassregel.]
  )

== Regel von Simpson
Die Regel von Simpson ist eine Verallgemeinerung der Keplerschen Fassregel. Hier kann man die Teilungshäufigkeit auswählen (n $>=$ 4 & n $in NN_g$). In jeden dieser Intervalle kann man die Keplersche Fassregel verwenden. Daraus ergibt sich die Formel:

#figure(
  $ integral_a^b f(x) d x approx \ (b-a)/(3 n) [f(a)+f(b)+4 sum_(j=1)^(n/2)f(x_(2 j -1)) + 2 sum_(k=2)^(n/2) f(x_(2 k-2))] $
  )


Weil man 3 Punkte pro Parabel nutzt, wird $n$ am Anfang mit 3 multipliziert. Danach kommen die Intervallgrenzen weil die eh egal sind und danach kommen die Big Bois. Die zwei Summen können in ungerade und gerade Verteilungen kategorisiert werden. Die ungeraden sind am wichtigsten weil sie zwischen die zwei geraden Punkten stehen und die Parabel am meisten bilden. Dementsprechend bekommen sie eine Gewichtung von 4. Die geraden bekommen eine Gewichtung von 2. Ungeraden fangen bei 1 an und beinhalten $n/2$ Elemente weil ja die Hälfte der Elemente ungerade ist. Das gleiche passiert mit der geraden Summierung nur dort fäng der Index bei 2 weil sie gerade sind. Zu den $x_(2 j-1)$, das bedeutet einfach dass er sich jedes zweite Element (-1) nimmt, damit er die eins kleiner als die gerade Zahl hat (ungerade), weil alles mal 2 ist eine gerade Zahl, dementsprechend schaut es bei der geraden Summierung so aus: $x_(2 k)$

= Anwendung der Diff. & Int.

Dieser Kapitel dient der Beschäftigung mit den Anwendungsfällen der Integralrechnung wie beispielsweise Volumina, Streckenlängen, Mittelwerten, etc.

== Flächenberechung

Das ist ein Wiederholungskapitel


#grid(
  columns: 3,
  gutter: 10pt,
  // First image
  image("imgs/flch1.png", width: 100%),
  // Second image
  image("imgs/flch2.png", width: 100%),
  // Third image
  image("imgs/flch3.png", width: 100%),
  // First description
  text("Teil A"),
  // Second description
  text("Teil B"),
  // Third description
  text("Teil C")
)

Beim *Teil A* soll man zuerst die komplette Fläche unter der Funktion berechnen durch $integral_a^b f(x) d x$. Danach berechnet man sich den unteren Teil der einfach ein Rechteck ist, also $c dot (b - a)$, wobei $b-a$ einfach die länge des Rechtecks innerhalb des Intervals ist und zuletzt soll man den Rechteck von der ganzen Fläche subtrahieren.

Beim *Teil B* muss man zuerst die gesamte Fläche unter der Funktion $f(x)$ berechnen mit $integral_a^b f(x) d x$, danach der Funktion $g(x)$ mit $integral_a^b f(x) d x$ und zuletzt soll man die Fläche der funktion $g(x)$ von der Fläche der Funktion $f(x)$ abziehen.

Beim *Teil C* braucht man zusätzlich noch den Punkt C aka. den Schnittpunkt der Funktionen $f(x)$ und $g(x)$. Man berechnet einfach die Fläche der Funktion $f(x)$ bis C mit $integral_a^c f(x) d x$ und danach addiert man die Fläche der Funktion $g(x)$ ab dem Punkt C mit $integral_c^b g(x) d x$.

=== Orientierter Flächeninhalt

Wenn eine Funktion die man integrieren möchte eine oder mehrere Nullstellen hat, muss man stückweise Integrieren wobei die Intervalle durch die Intervallgrenzen und die Nullstellen bestimmt werden. Man muss auch den Absolutwert der Fläche die unter der x-Achse liegt nehmen damit es auch was bringt.

== Volumenberechnung

Man kann das Volumen von einem Rotationskörper ziemlich leicht berechnen wenn ein Kurvenstück um die x oder y-Achse rotiert.

#figure(
  image("imgs/rotation2.png", width: 60%),
  caption: [Die integrierte $f(x)$ als Rotationskörper]
)

Das Wichtigste ist dass die Formel einer Kreisfläche $A=r^2 pi$ beträgt. Wir können uns die integrierte Funktion $f(x)$ als einen Radius an jedem Punkt im Intervall $[a,b]$ vorstellen. Wir wollen jetzt die Kreisfläche davon haben, dementsprechend muss man $f(x)$ als den Radius bezeichen und daraus entsteht die Formel:

#figure(
  $ V = pi integral_a^b [f(x)]^2 d x $
  )

Man kann auch die gleiche Vorgehensweise bei der y-Achse anwenden:

#figure(
  $ V = pi integral_c^d [g(y)]^2 d y $
  )

== Bogenlänge

Man kann die Länge des Funktionsgraphens $y=f(x)$ mit Integralen lösen.

#figure(
  image("imgs/bogen.png", width: 60%)
  )

Für $Delta s$ dann Pythagoras angewendet werden

#figure(
  $ (Delta s)^2 = (Delta x)^2 + (Delta y)^2 $
  )

Weil $Delta x$ später zu $d x$ umwandeln wird, wäre es smart $Delta x$ aus dem Pythagoras-Term rauszudividieren:

#figure(
  $ (Delta s)^2 = [1 + (Delta y)^2/(Delta x)^2] (Delta x)^2 $
  )

Wir wollen aber eigentlich $integral_a^b d s$ ausrechnen und dementsprechend müssen wir $Delta$ ins $d$ umwandeln, was uns den Term $1+((d y)/(d x))^2$ liefert welcher auch $y'$ bedeutet. Wir wollen auch nicht $(d s)^2$ sondern $d s$. Das heißt Wurzelziehen:

#figure(
  $ d s = sqrt([1+(y')^2] d x^2)= sqrt(1+(y')^2) d x  $
  )

Man muss es jetzt nur integrieren die Formel lautet:

#figure(
  $ s = integral_a^b sqrt(1 + (y')^2) d x $,
  caption:[Bogenlänge Formel]
  )

== Mittelwerte

Man kann den durschschnittlichen Wert einer Funktion folgendermaßen finden:

#figure(
  $ m = 1/(b-a) integral_a^b f(x) d x $
  )

Beispielsweise bei einer Geschwindigkeit-Zeit Funktion modelliert $m$ die durschschnittliche Geschwindigkeit.

Man multipliziert mit $1/(b-a)$ weil die Formel für den Mittelwert *Gesamtsumme / Länge des Intervalls* lautet. b-a ist die Länge des Intervalls und das Integral ist die Gesamtsumme.

Es gibt auch die Formeln für den Absolutwert und den Effektivwert:

#figure(
  $ m_(text(a b s )) = 1/(b-a) integral_a^b abs(f(x)) d x \ m_(text(e f f)) = sqrt(1/(b-a) integral_a^b [f(x)]^2 d x)$
  )

== Beispiele im Sachzusammenhang

Dieses Kapitel ist eine Wiederholung aus dem letzten Modul.
$s$ (Wegfunktion), $dot(s)$ ist die momentane Geschwindigkeit aka. $v(t)$. $dot.double(s)$ ist die momentane Beschleunigung aka. $a(t)$. 

$ s(t) = integral v(t) d t  \ v(t) = integral a(t) d t $

- Die Geschwindigkeitsfunktion $->$ erste Ableitung der Wegfunktion
- Die Beschleunigungsfunktion $->$ erste Ableitung der Geschwindigkeitsfunktion.

== Wesentliche Grundlagen II

Dieses Kapitel ist ein Wiederholungskapitel.
Steigungswinkel $alpha$ einer Funktion $f(x)$ an der Stelle $x_0$

$ tan(alpha) = f'(x_0) $

=== Kurvendiskussion

1. Schreib 1. & 2. Ableitung
2. Definitionsmenge bestimmen von $y=f(x)$
3. Symetrieeigenschaften von $y=f(x)$
4. Nullstellen berechnen 
$ f(x) => N_1(x_(N 1)|0), N_1(x_(N 2)|0), ... $
5. Berechnung der Extremstellen $f(x)$
$ f(x) => E_1(x_(E 1)|f(x_(E 1)), E_2(x_(E 2)|f(x_E 2))) $
6. Entcheidung Minimum/Maximum
$ f''(x_E) < 0 => text("Maximum") \ f''(x_E) > 0 => text("Minimum") $
7. Globale Extremen (Rand des Def. Bereichs)
$ D = [x_l, x_r] => f(x_l), f(x_r) $
8. Berechung der Wendestellen $f''(x) = 0$
$ => W_1(x_(W 1)|x_(W 2)), W_2(x_(W 2)|f(x_(W 2))) $
9. Berechnung der Wendetangenten
$ k_W = f'(x_W) \ d => y_W = f'(x_W) dot x_W + d \ t_W : y = f'(x_W) dot x + d $
10. Berechnung der Nullstellen 
$ f(x) = 0 => N_1(x_(N 1)|0), N_2(x_(N 2)|0) $
11. Graphische Darstellung

=== Extremwertaufgaben

Auch als Optimierungsaufgaben bekannt. Ziel ist es den max- oder min-Wertunter bestimmten Bedingungen und Nebenbedingungen zu finden. Zuerst findet man die Hauptbedingung, die in der Frage schon steht wie z.B. "... damit das Rechteck möglichst groß wird". Danach kommt die Nebenbedingung, die Beispielsweise besagen könne, dass der Umfang des Rechtecks $10 m$ betragen soll. Danach stellt man Gleichungen auf, setzt *NB* in *HS* ein und findet das Maximum oder Minimum, hängt von der Aufgabe ab.

= EK

Hier befinden sich die EK's

== Uneigentliche Integrale

Uneigentlich heißt in dem Fall unendlich, das heißt entweder ist in den Integrationsgrenze ein Unendlich (Art 1) oder das Integral enthält eine Singularität (Division durch null) bei der Einsetzung der Integrationsgrenzen (Art 2).
Beide Arten kann man einfach lösen, indem man die betroffene Integrationsgrenze mit einer Variable ersetzt und von der ein Grenzwert nimmt.

*Art 1*
$ integral_1^infinity 1/x^2 d x \
  = lim_(t -> infinity) [integral_1^t 1/x^2 d x] \
  = lim_(t -> infinity) -[1/x |_1^t] \
  = lim_(t -> infinity) -1/t + 1 = 0 $

*Art 2*
$ integral_0^1 1/x^2 d x \
  = lim_(t -> 0) [integral_t^1 1/x^2 d x] \
  = lim_(t -> 0) -[1 - 1/t] \
  = lim_(t -> 0) 1/t - 1 = infinity $

Bei einem allgemeinen Integral $integral_1^infinity 1/x^P d x$ ist das Ergebnis bei $P > 1$ konvergent und bei $P <= 1$ divergent.

= Aufgaben

== Volumenberechnung

Hier sind die Aufgaben zur Volumenberechnung

=== Aufgabe 7.48

#figure(
  image("imgs/748.png")
  )

1) y-Achse
2) x-Achse
3) y-Achse

=== Aufgabe 7.49

#image("imgs/7491.png")

Lösung:
#image("imgs/7492.png")

=== Aufgabe 7.45

#image("imgs/745.png")

Allgemein ist die Formel für das Volumen eines Körpers

$ V = integral_a^b A(x) d x $

Wobei $A(x)$ die Flächenfunktion ist. Also müssen wir zuerst $A(x)$ finden.

#figure(
  image("imgs/dis.png", width: 40%),
  caption: [Visualisierung einer Kugelscheibe]
  )

Eine Kugel besteht aus unendlich vielen "Kugelscheiben" (Grün auf Figure 17) deren Radius $y$ beträgt. Wir könnten auch $x$ nehmen, aber wir bewegen uns auf der x-Achse (weil wir $A(x)$ nutzen und nicht $A(y)$). Flächeninhalt eines Kreises ist $pi dot text("radius")^2$, dementsprechend bekommen wir

$ A(x)=pi dot y^2 $

Wir müssen aber $y$ in $x$ umwandeln. Wir können dafür Pythagoras anwenden:

$ r^2 = x^2 + y^2 \ y^2 = r^2 - x^2 \ y = plus.minus sqrt(r^2 - x^2) $
Jetzt können wir $y^2$ in $x$ umschreiben:

$ A(x) = pi dot (plus.minus) sqrt(r^2 - x^2)^2  \ A(x) = pi dot (r^2 - x^2) $

Man kann jetzt $A(x)$ in die Volumenformel substituieren

$ V = pi integral_(-r)^r r^2-x^2 d x \ pi [r^2 x - 1/3 x^3 |_(-r)^r] \ 
  = pi [r^2 r -1/3 r^3 - (r^2 (-r) + 1/3 r^3)] \ 
  = pi [r^3 -1/3 r^3 + r^3 - 1/3 r^3] \
  = pi [2r^3 - 2/3 r^3] \ 
  = pi [6/3 r^3 - 2/3 r^3] \
  = pi [4/3 r^3] = 4/3 pi r^3 $

=== Aufgabe 7.46

#image("imgs/746.png")

*1)*

Funktionsgleichung (spezifisc $a$) findet man indem man den auf dem Graphen existierenden Punkt $P(5, 10)$ einsetzt $=> 10=a dot 5^2 => a=2/5$

$ y = 2/5 dot x^2 $

Wir kennen schon die formel $ pi integral_a^b [g(y)]^2 d y $. Dafür müssen wir die Funktionsgleichung auf $x^2$ umstellen (weil wir $y$ als die unabhängige Variable haben wollen)

$ x^2 = 5/2 y $

Jetzt kann man die Funktion in die Formel einsetzen:

$ pi integral_0^5.5 x^2 d y = pi integral_0^5.5 5/2 y d y \
  = 5/2 pi [y^2/2 |_0^5.5]  = 118.79 text("cm³") approx 119 m l $

*2)*

Wir wissen ja das Volumen und wollen sozusagen die obere Integrationsgrenze, also müssen wir die Integrationsgrenze als eine unabhängige Variable setzten und diesmal allgemein die Volumenformel ausrechnen:

$ pi integral_0^h 5/2 y d y = 5/2 pi [y^2/2 |_0^h] \
  = 5/2 pi h^2/2 $

Jetzt muss $250$ als der Funktionswert eingesetzt werden und man kann h auflösen

$ 250 = pi (5h^2)/4 => h = 7.98 c m approx 8 c m $

=== Aufgabe 6.144 b)

#figure(
  image("imgs/6144.png", width: 50%)
  )

==== Wiederholung: Parzielle Integration

Partielle Integration wird am eingachsten durch die DI-Methode durchgeführt. Beispielsweise wollen wir das folgende Integral lösen:

$ integral x^2 sin(x) d x $

Dafür müssen wir eine Tabelle mit einer Ableitungskolumne und einer Integrationskolumne aufstellen. Die reihen werden ihre Vorzeichen alternieren, + kommt als erstes.

#figure(
  image("imgs/di.png", width: 30%)
  )

Die Lösung ist die Summierung der Querprodukte der D & I-Teile (blaue Pfeile). Es gibt 3 mögliche Stopszenarien:
1. 0 auf der D-Kolumne (unserer Fall)
2. Wenn wir eine DI-Reihe zusammenmultiplizieren und integrieren kann. Diese Reihe muss mit außerdem mit dem entsprechenden Vorzeichen als ein Integral in der Lösung vorkommen (und dann gelöst werden).
3. Wenn eine Reihe (unabhängig vom Vorzeichen) sich wiederholt. Wir müssen diese Reihe ebenfalls als ein Integral (mit entsprechenden Vorzeichen) in die Lösung reinschreiben.

==== Die eigentliche Aufgabe

Bei der partiellen Integration mit der DI-Methode kommt 
$ lim_(t -> infinity) -x^2 e^(-x) - 2x e^(-x) |_0^t + integral_0^infinity 2 e^(-x) d x \
  = 0 + lim_(t->infinity) integral_0^t 2 e^(-x) d x \
  = lim_(t->infinity) -2 [e^(-x) |_0^t] = -2 [0-1] = 2 $


=== Aufgabe 7.51

#image("imgs/751.png")

Zuerst müssen die Punkte $x_1$ und $y_2$ gefunden werden. Mit _solve(sqrt(x-2),x)_ und _subst(6, x, sqrt(x-2))_ erhalten wir $x_1 = 2$ und $y_2 = 2$ (man könnte auch einfach $sqrt(6-2)$ ausrechnen).

*a)*

Wir drehen es um die x-Achse, also brauchen wir die x-Koordinate als Grenzen und $x$ als die Integrationsvariable:

$ pi integral_2^6 (sqrt(x-2))^2 d x = pi integral_2^6 x-2 d x = pi \
  pi [x^2/2 - 2x |_2^6] = pi [6 - (-2)] = 25.132 E^2 $

*b)*

Jetzt das gleiche nur mit den y-Koordinaten und wir müssen zuerst die Gleichung umstellen damit $y$ die unabhängige Variable wird:

$ y = sqrt(x-2) = y^2 = x-2 \ y^2 + 2 = x $

Jetzt können wir wie davor integrieren:

$ pi integral_0^2 (y^2+2)^2 d y = pi [y^5/5 + (4y^3)/3 + 4y |_0^2] \
  pi [6.4 + 10.666 + 8] = 78.747 E^2 $

=== Aufgabe 7.52 b)

#image("imgs/752.png")

Für diese Aufgabe muss man die folgende Identität kennen:

$ cos^2(x) = (1+cos(2x))/2 $

Sonst bleibt alles gleich.

$ pi integral_0^(pi/2) (1+cos(2x))/2 d x \
  = pi/2 integral_0^(pi/2) 1 d x + pi/2 integral_0^(pi/2) cos(2x) d x \
  = pi/2 dot pi/2 + pi/2 dot 0 = pi^2/4 = 2.467 E^2 $

=== Aufgabe 7.53 b)

#image("imgs/753.png")

Hier muss man die Gleichung umstellen, damit $y$ die unabhängige Variable wird.

$ y=ln(x) \
  e^y = x $

Jetzt kann wie gewohnt gearbeitet werden

$ pi integral_(-1)^1 (e^y)^2 d y \
  pi [1/2 e^(2y) |_(-1)^1] = pi [e^2/2 - e(-2)/2] = 11.394 E^2 $

== Bogenlänge

Diese Beispiele sind nicht mehr auf die Integration selbst fokusiert weil wir ja Maxima eh benutzen werden also macht es kein Sinn sich damit für die Schularbeit ausernanderzusetzen. Hier liegt die Aufgabe eher an der Vorbereitung und dem Setup. Ich schreib außerdem die Maxima-Befehle dazu.

=== Aufgabe 7.74 b)

Erinnerung welche Formel wir eigentlich benutzen werden:

$ integral_a^b sqrt(1+(y')^2) d x $

#image("imgs/7742.png")

Zuerst müssen wir $y'$ ausrechnen:

$ y' = 3/2 sqrt(x) $

Jetzt muss man nur in die Formel einsetzen:

$ integral_0^4 sqrt(1+(3/2 sqrt(x))^2) d x = 9.07 E $

Maxima-Befehl: _integrate(sqrt(1+(3/2*sqrt(x))^2), x, 0, 4), numer_

=== Aufgabe 7.75 b)

#image("imgs/775.png")

$ y' = x \ 
  integral_(-2)^2 sqrt(1+(x)^2) d x = 5.915 E $

Maxima-Befehl: _integrate(sqrt(1+x^2), x, -2, 2), numer_

=== Aufgabe 7.76 b)

#image("imgs/776.png")

$ y' = 1/(cos^2(x)) \
  integral_(- pi/4)^(pi/4) sqrt(1+(1/(cos^2(x)))^2) d x = 2.555 E $

Das war ein interesannter Fall, weil hier die analytische Integration nicht funktionierte. Ich musste romberg einsetzen um die Lösung zu finden. Quadpack hat auch die Lösung gefunden, aber daneben auch andere, falsche. Dementsprechend ist romberg die beste Wahl in diesem Fall.

Maxima-Befehl: _romberg(sqrt(1+(1/(cos(x)^2))^2), x, -%pi/4, %pi/4)_


== Mittelwerte

Hier sind eher elektrotechnik-Beispiele die was mit Mittelwerten zu tun haben. Wichtig ist es, dass man den Gleichanteil bekommt, indem man die Formel einsetzt und man bekommt den Wechselwert, indem man den Graphen nach unten verschiebt.

=== Aufgabe 7.119

#image("imgs/7119.png")

*1)* Der ununterbrochene rote Pfad (Steigung = 0) ist die Gleichspannung (weil sie gleich bleibt).

Zuerst müssen wir die Periodendauer (Dauer eines Zyklus) ablesen (9ms)

Danach muss man stückweise die Funktion $u(t)$ definieren, die den Wechselwert bestimmt:

$ u(t) = cases(25V text("für") 0m s <= t < 3m s, 5V text("für") 3m s <= t < 6m s, 0V text("für") 6m s <= t < 9m s,) $

Jetzt einfach den Mittelwert ausrechnen

$ overline(u) = 1/T dot integral_0^T u(t) d t = \
  1/9 dot (25 dot 3 + 5 dot 3 + 0) = 10V $

Für den Wechselwert muss man einfach den Graphen um 10V nach unten verschieben, damit der Gleichteil eliminiert wird und nur der Wechselteil übrig bleibt.

*2)* Die Formel für den Effektivwert lautet (wie schon davor erwähnt)

$  m_(text("eff")) =  sqrt(1/(b-a) integral_a^b [f(x)]^2 d x) $

Wir müssen also $u(t)$ als $f(x)$ einsetzen:

$ U_(text("eff")) = sqrt(1/9 (25^2 dot 3 + 5^2 dot 3)) = 14.72V $

=== Aufgabe 7.120 b)

#image("imgs/7120.png")

*1)* Periodendauer: 5ms

$ u(t) = cases(20/3 t -5V text("für") 0m s <= t < 3m s, 15V text("für") 3<= t < 5) $

Jetzt in die Formel einsetzen

$ overline(u) = 1/5 (integral_0^3 (20/3 t-5) d t + integral_3^5 15 d t)\
  = 1/5 (20/3 integral_0^3 t d t - integral_0^3 5 d t + 30V ) \
  = 1/5 (20/3 dot 3 - 15V + 30V) = 1/5 (35V) \
  = 9V
$

Wechselwert bekommt man indem man den Graphen um 9V nach unten verschiebt.

Wichtig: Man kann die beiden Funktionteile nie miteinander Vermischen weil sie an verschiedenen Zeitpunkten sind.

*2)* Hier hab ich einfach Maxima verwendet aber hier ist die Formel.

$ U_(text("eff")) = sqrt(1/5(integral_0^3 (20/3 t -5)^2) d t + integral_3^5 (15)^2 d t) $

Maxima-Befehle:
1. _f: 20/3*t-5_
2. _o:1/5\*(integrate(f^2, t, 0, 3) +integrate(15^2, t, 3,5))_
3. _sqrt(o), numer_

=== Aufgabe 7.121 b)

#image("imgs/7121.png")

*1)* Periodendauer: $2pi$

$ i(t) = cases(2 dot cos(t) + 2m A text("für") 0m s <= t < pi m s, 0m A text("für") pi m s <= t < 2pi) $

Jetzt nur noch stückweise integrieren und in die Formel einsetzen (auch hier in Maxima)

$ overline(u) = 1/(2pi) (integral_0^pi (2 dot cos(t) + 2) d t + integral_pi^(2pi) 0 d t) \ approx 1 m A $

Maxima-Befehle:
1. _f:2*cos(t)+2_
2. _o:1/(2\*%pi)\*(integrate(f, t, 0, %pi)), numer_


Um den Gleichanteil zu bekommen muss man den Graphen um 1mA nach unten verschieben.


*2)* Um den Effektivwert zu berechnen muss die Formel angewendet werden:

$ I_(text("eff")) = sqrt(1/(2pi) [(integral_0^pi 2 dot cos(t) + 2 d t)^2 + (integral_pi^(2pi) 0 d t)^2]) \ = 1.732 m A $

Wichtig: Man sollte nicht das ganze Integral quadrieren, sondern nur die Funktion zum Integrieren.

== Konkrete Beispiele

Hier sind die typischen Schularbeitsbeispiele.


