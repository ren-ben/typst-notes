#align(center, text(24pt)[
  *Spezielle & Generelle Relativitätstheorie*
])


#align(center)[
    Oliwier Przewlocki \
    Technologisches Gewerbemuseum \
    #link("mailto:oprzewlocki@student.tgm.ac.at")
]

#show: rest => columns(2, rest)
#import "@preview/physica:0.9.2": *

#set heading(numbering: "1.")


#show par: set block(spacing: 0.65em)
#set par(
  first-line-indent: 1em,
  justify: true,
)

= Einführung

== Der Streit

Der Streit zwischen der klassichen Mechanik und dem Elektromagnetismus bezieht sich darauf, dass aus den Maxwell-Gleichungen die Wellengleichung erstellt werden kann:


#set align(center)
$ div E = 0 \
  curl B = epsilon_0 mu_0 pdv(E,t) \
  curl E = -pdv(B,t) \ \ \
  curl (curl E) = curl (- pdv(B,t)) \
  grad(div E ) - laplacian E = - pdv(,t) (curl B) \
  grad(div E ) - laplacian E = - epsilon_0 mu_0 pdv(E,t,2) \
  0 - laplacian E = - 1/c^2 pdv(E,t,2) \
  1/c^2 pdv(E,t,2) - laplacian E = 0
$

#set align(start)
Das Problem erscheint, weil hier die Lichtgeschwindigkeit $c$ als eine Konstante betrachtet wird ($c=1/(sqrt(mu_0 epsilon_0))$) was die Physiker damals verwirrt hat, weil die Theorie von Galileo, die klassische Mechanik davon überzeugt war, dass beispielsweise die Geschwindigkeit eines Balles relativ zu einem Bezugsystem $x'$ und $y'$ bei $v-v'$ liegt, was aber bei einer Konstante nicht möglich ist. Außerdem ist sich die klassische Mechanik ziemlich sicher, dass eine absolute Geschwindigkeit nicht existiert, also muss es ein Weg geben, $v-v'$ im Bezug auf die Lichtgeschwindigkeit auszudrücken. Die Physiker des 20ten Jahrhunderts haben nach verschiedenen Lösungen wie Ether gesucht. Schlussendlich kamen sie auf die Relativitätstheorie, mit der sich dieser Paper beschäftigt.

== Galileo's Transformationen
Einstein war der erste Physiker, der nicht den Elektromagnetismus in Frage stellte, sondern die klassische Mechanik. Galileo fand raus, dass Zeit absolut ist ($t=t'$). Die $x'$ Koordinate ist $x'=x-v' t$. Wenn wir jetzt die Ableitung nehmen: $dv(x',t)=dot(x')=dot(x) - v'$ wobei $dot(x')$ ist die Geschwindigkeit des Balles die aus dem Bezugsystem $x'$ und $y'$ gemessen wird. Wie später im Detail besprochen wird, hat Einstein valide Argumente geformt, die auf ein Fehler in diesen Transformationen angedeutet haben.

#figure(
  image("images/galilean_transform.jpeg", width: 80%),
  caption: [
    Bezugsystem in Galileo's Transformationen
  ],
)


= Lorentz Transformationen

== Ableitung

#figure(
  image("images/lorentz_derivation.svg", width: 50%),
  caption: [
    Plot der Lichtgeschwindigkeit $times$ Zeit
  ],
)

Bevor es mit Lorentz Transformationen weitergehen kann, muss zuerst das Prinzip der Gleichzeitigkeit erwähnt werden.

=== Gleichzeitigkeit
Gleichzeitigkeit bezeichnet die Eigenschaft von zwei Ereignissen, dass sie zur gleichen Zeit auftreten. Im Kontext der Physik, insbesondere in der speziellen Relativitätstheorie, wird Gleichzeitigkeit relativ interpretiert, was bedeutet, dass sie von der Perspektive des Beobachters abhängt, der die Ereignisse beobachtet.

#figure(
  image("images/simultaneous.svg", width: 70%),
  caption: [
    Person $A$ und Person $B$ senden jeweils ein Lichtstrahl zum Mittelpunkt
    ] 
  ) <gleich>

Grundsätzlich wenn es keine Bewegung bei der @gleich gibt kommen die Lichtstrahle gleichzeitig an. Wenn das Senden jedoch während einer Bewegung durchgeführt wird, kommen sie nicht gleichzeitig an.

#figure(
  image("images/refframesim2.svg", width: 50%),
  caption: [
    $B$ & $A$ senden Lichtstrahle und bewegen sich mit $v$
    ]
  )

Person B sendet den Lichtstrahl in die entgegengesetzte Richtung, was die Geschwindigkeit von $-c$ beträgt. Der Schnittpunkt mit der $B$-Funktion passiert später als der Schnittpunkt mit der $A$-Funktion was bedeutet, dass Person $B$ den Lichtstrahl später senden sollte, damit sie sich gleichzeitig treffen. Dieses Ergebnis ist ist intuitiv, wenn man die Geschwindigkeit $v$ in Acht nimmt, mit der sich die beiden Personen bewegen. Aus einem anderen Bezugsystem würde sich rausstellen, dass die Beiden Lichtstrahle tatsächlich gleichzeitig ankommen.
Die Gleichung für die Linie mit der Steigung von $-c$ lautet

#set align(center)
#figure(
  $x=-c(t-t_A) + x_A$
)
#set align(start)
Jetzt müssen die Koordinate des Punktes $A$ gefunden werden (Schnittpunkt des Mittelpunktes und der Lichtstrahle). 

#set align(center)

#figure(
  $cases(x=v t+a, x=c t)$
)
#set align(start)
($a$ ist die Distanz zwischen $x=0$ und dem Mittelpunkt)

#set align(center)

#figure(
  $x=-c(t-a/(c-v)) + (a c)/x-v \
    cases(x=-c(t-a/(c-v)) + (a c)/x-v, x=v t + 2a) \
    t_B = (2 a v)/(c^2-v^2) \
    x_B = (2 a c)/(c^2-v^2) \
    x_B/t_B = c^2/v |-> x/t = c^2/v |-> x=c^2/v t$
)

#set align(start)

=== Beziehung zwischen $x$ und $x'$

Wie wir wissen, hat $x$ eine Beziehung zu $x'$ und die kann durch eine Differenz zwischen $x$ und $v t $ multipliziert mit einer Konstante $gamma$ dargestellt werden.

#set align(center)

#figure(
  $x' = 0, x = v t -> x' = gamma times (x - v t)$
  )

#set align(start)

Für $t'$ ist die Situation sehr ähnlich

#set align(center)

#figure(
  $t' = 0, t = v/c^2x -> t' = gamma' times (t - v/c^2x)$
  )

#set align(start)

Daraus können folgende Beziehung aufgezeichnet werden

#set align(center)

#figure(
  $x=gamma times (x' + v t) \ t = gamma' times (t' + v/c^2x)$
  )

#set align(start)

Durch das Substitutionsverfahren kann alles auf $x'$ und $t'$ umgewandlet werden.

#set align(center)

#figure(
  $x'=gamma [gamma (x'+v t') - gamma' v (t'+v/c^2x')] \ = gamma^2 x' + gamma^2v t'-gamma gamma' v t' - gamma gamma' v^2/c^2x' \ =(gamma^2 - gamma gamma' v^2/c^2)x' + (gamma^2 v-gamma gamma' v) t'$
  )

#set align(start)

Weil alles gleich $x'$ ist, muss der erste Term $(gamma^2-gamma gamma' v^2/c^2)$ gleich eins sein und der zweite Term gleich null sein.

#figure(
  $gamma^2 - gamma^2 v/c^2 = 1 -> gamma^2 = 1 / (1-v^2/c^2) -> gamma  = plus.minus 1/sqrt(1-v^2/c^2) \ $
  )

#set align(start)

Dementsprechend kann $gamma$ (auch Lorentzfaktor oder $beta$ genannt) ebenfalls substituiert werden und damit bekommen wir die Lorentz Transformationen

#set align(center)

#figure(
  $cases(x'= (x-v t)/sqrt(1-v^2/c^2), t'= (t-v/c^2 x)/sqrt(1-v^2/c^2))$
)

#set align(start)

Durch weitere Berechnungen, kann auf die Lorentz-Invarianz draufgekommen werden. Diese wird nicht durch die Lorentz-Transformation beeinflusst. Es ist eine Einheit die sich nicht verändert.

#set align(center)

#figure(
  $x'^2-c^2t'^2 = x^2-c^2 t^2$
  )

#set align(start)

Man kann außerdem die Lorentz-Transformationen aus der Lorentz Invarianz Ableiten.

=== Geschwindigkeitskompositionen

Ein statischer Beobachter ($x$, $t$) sieht ein fahrendes Auto ($x'$, $t'$) wo drinnen ein Ball nach vorne geschmissen wird ($x''$, $t''$). Gallileo würde sagen, dass $t=t'=t''$ und dass die Geschwindigkeit des Balles gleich der Geschwindigkeit des Balles im Auto ($w$) minus der Geschwindigkeit des Autos ($v$) (wenn der Beobachter das Inertialsystem ist). Wenn wir jetzt aber mit Lorentz-Transformationen von $x$ auf $x'$ umsteigen wollen, gilt wie bereits erwähnt $x'=(x-v t)/sqrt(1-v^2/c^2)$ oder einfach $x'=x-v t beta(v)$ wenn wir annehmen, dass $beta(v)=1/(sqrt(1-v^2/c^2))$. Außerdem ist $t'=(t-v/c^2 x)beta(v)$. Wichtig ist auch das Inverse davon:

#figure(
  $ cases(x = (x'+v t')beta(v), t = (t' + v/c^2 x') beta(v)) $,
  caption: [
    Gleichung 1
    ]
  ) <Gleichung1>

Wie kommt man aber auf $x''$ von $x$?
Ganz einfach, wie bereits erwähnt bewegt sich der Ball mit einer Geschwindigkeit von $w$ und das Auto mit einer Geschwindigkeit von $v$. Also müssen wir einfach folgendes tun:

#figure(
  $ cases(x''=(x-w t)beta(w), t''=(t-w/c^2 x)beta(w)) $,
  caption: [
    Gleichung 2
    ]
  ) <Gleichung2>

Was wir jetzt finden wollen ist die folgende Beziehung: $(x',t') <-> (x'', t'')$. Wir wissen aus @Gleichung1 was $x$ gleich ist mittels $x'$ und $t'$ und somit müssen wir nur @Gleichung1 in @Gleichung2 substituieren. Das bedeutet wir ersetzen $x$ in der @Gleichung2 mit $(x'+v t')beta(v)$ usw. Nach ein wenig Algebra kommen wir auf

#figure(
  $ cases(x'' = beta(v)beta(w)[x'(1-(w v)/c^2) - t' (w-v)], t'' = beta(v)beta(w)[t'(1-(w v)/c^2)-x'/c^2(w-v)]) $,
  caption: [
    Gleichung3
    ]
  ) <Gleichung3>

Wir könnten es aber in eine andere Art und Weise aufschreiben. Wenn wir die relative Geschwindigkeit zwischen dem Fahrer und dem Ball $u$ bennenen, können wir die folgenden Gleichungen aufstellen:

#figure(
  $ cases(x''=(x'-u t') beta(u), t'' = (t'-u/c^2 x') beta(u)) $,
  caption: [
    Gleichung 4
    ]
) <Gleichung4>

Daraufhin können wir @Gleichung3 und @Gleichung4 gleich setzen weil sie beide Gleich $x''$ bzw. Gleich $t''$ sind. Somit können wir folgendes aufstellen:

#figure(
  $ cases(beta(u) = beta(v)beta(w)((1-w v)/c^2), u beta(u) = beta(v)beta(w) (w-v)) $
  )

Was wir jetzt noch machen müssen ist die obere Gleichung mit der Unteren zu dividieren. Wir kommen auf ein interessantes Ergebnis:

#figure(
  $ u = (w - v)/(1- (w v)/c^2) $
  )

Dies ist eine generalisierung der Galileo-Transformationen ($u=w-v$). Das bedeutet, wir können Lorentz-Transformationen aus Galileo-Transformationen herausfinden.

#figure(
  image("images/lorentz_vel.svg", width: 50%),
  caption: [
      Beispiel des Zebrechens der Galileo-Transformationen
    ]
  )

Wenn wir jetzt ein Lichtstrahl haben der nach links vom Inertialsystem kehrt und ein Lichtstrahl der nach rechts kehrt werden und die Galileo-Transformationen folgendes sagen:

#figure(
  $ u = c - (-c) = 2c $
  )

Was nicht möglich ist weil nichts schneller als $c$ sein kann. Probieren wir Lorentz-Transformationen aus:

#figure(
  $ u = (2 c)/(1-(-c^2)/c^2) = (2 c)/(1 + c^2/c^2) = (2 c)/(2) = c $
  )

Bingo! Genau das was uns Relativität zeigt. Nichts kann schneller als Licht sein.

== Längenkontraktion und Zeitdilatation

Dies sind zwei wichtige Bestandteile der speziellen Relativitätstheorie. Wir nehmen an, es gibt ein Objekt mit der Länge $l -> (x,t)$ und wir wollen die Länge im Bezugsystem $(x',t') -> l'$ messen. Die Koordinaten von $l$ sind $x_1$ und $x_2$ auf dem Plot:

#figure(
  image("images/lcontraction.svg", width: 50%),
  caption: [
    Längenkontraktion Beispiel
    ]
  )

Die Länge kann durch $x_2-x_1$ berechnet werden. Mit Lorentz-Transformationen kommen wir auf Zwei Gleichungen wenn wir auf $(x',t')$ wächseln:

#figure(
  $ x'_2 = (x_2-v t_0)/(sqrt(1-v^2/c^2)) space , space x'_1 = (x_1-v t_0)/sqrt(1-v^2/c^2) $
  )

Jetzt können wir die Beiden subtrahieren und bekommen:

#figure(
    $ x'_2-x'_1 = (x_2-x_1)/(sqrt(1-v^2/c^2)) -> l'=l/sqrt(1-v^2/c^2) $
  )

Weil der Lorentzfaktor $<1$ ist, ist $l' > l$.

Bei der Zeitdilatation nehmen wir eine stehende Person im Bezugsystem $(x,t) --> (x_1, t_1)$ und weil die Person steht werden ihre Koordinaten nach einiger Zeit $(x_1, t_1 + Delta t)$ betragen. Wir können also die folgende Gleichung benutzen:

#figure(
  $ t'_1 = (t_1-v/c^2 x_1)/sqrt(1-v^2/c^2) \ t'_1 
   Delta t' = (t_1 + Delta t - v/c^2 x_1) / sqrt(1-v^2/c^2) \ Delta t' = (Delta t)/sqrt(1-v^2/c^2) -> Delta t' > Delta t$
)

=== Nicht-inertiale Systeme

Einfach erklärt ist die Geschwindigkeit zwischen den beiden Bezugsystemen nicht mehr konstant. Für deren Berechnung brauchen wir die Lorentz-Invarianz:

#figure(
  $ x'^2-c^2 t'^2 = x^2-c^2 t^2 $
  )

Für eine bessere Übersicht, müssen wir folgende Variable definieren:

#figure(
  $ c^2t^2-x^2=s^2 $
  )

Weil wir derzeit sehr kleine Raum- und Zeit-Abstände betrachten (wir schauen uns auch nur den ersten Zeitpunkt an), kann man $x$ und $t$ mit $d x$ und $d t$ ersetzen 

#figure(
  $ d s^2 = c^2 d t^2 - d x^2  $
  )

Wenn man aber diese Aussage Integriert bekommt man sehr interessante Ergebnisse sowohl für Inertialsysteme als auch für Nicht-inertialsysteme.

Wir werden uns damit später beschäftigen, aber dazu braucht man noch ein Paar andere Definitionen:

#figure(
  $ d tau = (d s)/c \ d s = c d tau \ d tau = sqrt(1 - v^2/c^2) d t$
  )

= Lagrange-Formalismus

Wir haben einen Partikel der im Zeitraum sich bewegt (die Zeitdimension geht durch den Bildschirm)

#figure(
  image("images/lagrangian_1.png", width: 50%)
)

Wenn wir den Abstand zwischen $tau_1$ und $tau_2$ berechnen wollen, gibt es die Newton'sche Art und Weise:

#figure(
  $ tau_2 - tau_1 = integral^(tau_1)_tau_2 sqrt(1-v^2/c^2) space d t$
  )

aber auch die Lagrang'sche Art und Weise:

#figure(
  $ S = A = integral^(t_2)_t_1 L(arrow(x), dot(arrow(x)), t) space d t $
  )

Hamilton sagt uns, dass wir die Aktion ($A$ oder $S$) minimieren müssen damit wir die Flugbahn bekommen können. Wir machen das indem wir die Flugbahn ändern, aber nicht die Endpunkte.

#figure(
  $ delta S = integral^(t_2)_t_1 delta L (arrow(x), dot(arrow(x)), t) space d t = 0 $
  )

Durch diese Formulation kann man die Euler-Lagrange-Gleichung ableiten:

#figure(
  $ pdv(f,y,1) - d/(d x) pdv(f,y',1) = 0 $
  )

Grundlegend ist $T$ die kinetische Energie, $V$ die potenzielle Energie und $U$ das Potenzial wobei $U=-V$.

== Lagrange - Spezielle Relativität
Zuerst sollten wir uns an die Invariaz erinnern:
#figure(
  $ d s^2 = c^2 d t^2 - d x^2 $
  )

Zur erinnerung, diese Invarianz beschreibt das Intervall zwischen zwei Ereignissen im Zeit-Raum. Wenn $d s^2 < 0$ haben wir ein Raumhaftes Intervall. Heißt, dass sie sich nicht beeinflüssen können und sind nicht Zeitlich verbunden. Wenn $d s^2 > 0$ dann ist das Intervall Zeithaft und kann sich zwischen den Ereignissen bewegen.Wenn $d s^2 = 0$ dann kann nur eine Lichtgeschwindigkeit die zwei Ereignisse verbinden.

Dazu definieren wir $d tau = (d s)/c$ noch einmal. (Invarianz dividiert durch die Lichtgeschwindigkeit). Dadurch, dass $|d arrow(x)|=V d t$ kann man durch einfache Algebra zu der folgenden Formel kommen:

#figure(
  $ d tau = d t times sqrt(1- v^2/c^2) $
  )

Jetzt wollen wir den Lagrangian erstellen.

#figure(
  $ A = integral^(t_0)_(t_1) L d t $
  )

Die eine Regel ist, dass alle Werte invariant sein müssen. Wir können zuerst $d t$ mit $d tau$ ersetzen. Den Lagrangian selbst zu ersetzen ist schwer. Man kann die Ruhemasse $m_0$ und $c$ nehmen. Weil $L = T - V$ und $T = 1/2 m_0 dot(x)^2$ können wir den folgenden Integral erstellen:

#figure(
  $ A = integral - m_0 c^2 d tau $
  )

Wir werden später sehen, wieso da ein minus ist und außerdem können wir $1/2$ weglassen weil es im grunde genommen nichts ausmacht. Fahren wir fort:

#figure(
  $ delta A = delta integral - m_0 c^2 sqrt(1-v^2/c^2) d t = delta integral L d t $
  )

Wir haben endlich unseren Lagrangian:

#figure(
  $ L = -m_0 c^2 sqrt(1-v^2/c^2) $
  )

=== Schwung in der SRT


