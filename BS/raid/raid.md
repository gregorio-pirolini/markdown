<style>
h1{color:red}
h2{color:green}
h3{color:blue}
h4{color:yellow}
h5{color:purple}
 
</style>

RAID
Redundant Array
of Independent (Inexpensive) Disk

Dr. Reiner Kupferschmidt

Gliederung
•
•
•
•
•
•
•
•
•
•

Zweck
Prinzip – Möglichkeiten
RAID-Level
genutzte RAID-Level
Hardware-RAID
Software-RAID
Host-RAID
RAID-Arten, Vor- und Nachteile
Lernzielkontrolle
Quellen
© Dr.-Ing. Reiner Kupferschmidt

2

Zweck
• Festplattenverbund von zwei
oder mehr Festplatten, bei
dem alle Daten mehrfach
(redundant) vorhanden sind
und man so vor Ausfall einer
oder mehrerer Einzelplatten
geschützt ist (außer RAID0)
• Geschwindigkeit steigern
• Daten-Verfügbarkeit erhöhen
• oder beides zusammen
• Achtung:
Ein RAID ersetzt niemals eine
Datensicherung

© Dr.-Ing. Reiner Kupferschmidt

3

Prinzip - Möglichkeiten
• RAID-Adapter oder Betriebssystem fassen mindestens zwei
oder mehr Festplatten zu einem logischen Verbund
zusammen - Array
• BS „sieht“ ein einziges logisches Laufwerk mit besonderen
Eigenschaften
• Daten werden im „Hintergrund“ auf die physischen Laufwerke
verteilt
• Hilft nur bei Ausfall einer Platte (Ausnahme RAID 6)
• Redundanz nur wenn hohe Verfügbarkeit gefordert, auch bei
Plattendefekt!
• Schützt nicht vor Viren, Würmern oder versehentlichem
Löschen, da gleichzeitiger Zugriff auf alle physischen
Laufwerke
• KEIN Ersatz für Backup!
© Dr.-Ing. Reiner Kupferschmidt

4

Datenträger HDD/SSD???
IST?
•
•
•
•

Physisch/logisch
Laufwerke: optisch, magnetomechanisch, elektronisch
Lese/Schreibgeschwindigkeit
Schnittstelle
–
–
–

•

Firmware
–
–
–
–

•
•
•
•
•
•
•
•

Übertragungsgeschwindigkeit
Protokoll
Formfaktor
Blockeinstellungen
Orientierung, Index, Winkel
Anzahl der Blöcke
…

Cache
Lebensdauer
Betriebsart
Speicherplatz
Bootfähigkeit
Lebensdauer
Betriebsspannung, Stromversorgung
Mechanische, Elektronische und Magnetische Beanspruchbarkeit und Empfindlichkeit
© Dr.-Ing. Reiner Kupferschmidt

5

Datenträger HDD/SSD???
• IST: Laufwerk, Formatierung 512 Byte/Block
• SOLL: Wie geht es weiter?
– Partitionstabelle schreiben
• MBR
• GPT

– Partitionen anlegen
– Formatierung, Filesystem anlegen
• Blöcke werden zu Cluster
• Maximale Dateigröße
• Verschnitt

– Bootfähigkeit?!
– Speichern von Daten
© Dr.-Ing. Reiner Kupferschmidt

6

Physisch – Logisch?
• Physisches Laufwerk
– Physisch vorhandene Hardware
– HDD, SSHD, SSD
– Kann in logische Laufwerke (Partitionen) aufgeteilt
werden
– „Benutzer kann die Laufwerke anfassen“

• Logisches Laufwerk
– Betriebssystem „sieht“ nur ein Laufwerk
– Mehrere physische Laufwerke können
zusammengefasst werden oder
– Partitionen eines physischen Laufwerks
– „Benutzer kann die Laufwerke NICHT anfassen“
© Dr.-Ing. Reiner Kupferschmidt

7

Hardware-RAID
• Klassische Form
• RAID-Controller
– Meist über PCI oder PCIe connectiert
– Organisiert die Datenverteilung auf den
Festplatten
– Berechnung der Prüfsummen, Paritäten
– „verbirgt“ die Plattenstruktur vor dem
Betriebssystem – logisches Laufwerk!
– Ermöglicht Start des BS von RAID-Laufwerk
© Dr.-Ing. Reiner Kupferschmidt

8

Host-RAID
• Zwischenstufe Hard-/Software-RAID
• RAID-Chipsatz, RAID-Adapter (Motherboard)
• RAID-Funktionen werden von der Firmware bzw.
den Treibern erledigt
• Aufwendige Berechnungen übernimmt der
Hauptprozessor
• Hohe Belastung der CPU (Fake-RAID)
• RAID-Adapter kann nur durch kompatiblen,
besser, gleichen ersetzt werden, ganzes
Motherboard muss getauscht werden
© Dr.-Ing. Reiner Kupferschmidt

9

Software-RAID
• Hauptprozessor muss Verteilung der Daten und
Berechnung der Prüfsummen übernehmen
• Linux erlaubt neben RAID 0, 1 und 5 auch noch
RAID 4 und 6
• MacOS beherrscht RAID 0 und 1
• Windows Server beherrscht RAID 0, 1 und 5
• Einzelplatz-Betriebssysteme von Microsoft
beherrschen nur RAID 0 und 1

© Dr.-Ing. Reiner Kupferschmidt

10

z. B. Windows 10
•
•
•
•
•

JBOD
RAID 0
RAID 1
RAID 5 (nur Win. Server)
Basisfestplatte in dynamischen
Datenträger - können Sie Volumes
erstellen, die sich über mehrere
Datenträger erstrecken
(übergreifende und
Stripesetvolumes)..
• Basisfestplatten unterstützen nur
primäre Partitionen, erweiterte
Partitionen und logische
Laufwerke.
© Dr.-Ing. Reiner Kupferschmidt

11

Übersicht
Bezeichnung

Software-RAID

Host-RAID

HW-RAID

Controller-Chip

nein

ja

ja

CPU-Berechnung

ja

ja

nein

Performance

mittel

hoch

hoch

Alarmfunktion

nein

möglich

ja

Kosten

integriert

gering

hoch

Vorteile

Hardwareunabhängig

billig

Hohe Performance

Nachteile

BS-abhängig

unzuverlässig

Hohe Kosten durch
Controller

Nur ein Hardware-RAID schützt ausreichend vor Hardware-Defekten.
© Dr.-Ing. Reiner Kupferschmidt

12

Einrichten von RAID
• Prüfen der Tauglichkeit der HW
• Vorher planen, vor allem bei HW-RAID über MB,
da BS u. U. neu aufgesetzt werden muss
• Gleiche Festplatten einsetzen
(Zugriffsgeschwindigkeit, Größe, Hersteller)
• Platten müssen für Dauerbetrieb geeignet sein
• Bei HW-RAID eventuell 2. Controller vorhalten
• Datensicherung rechtzeitig planen
© Dr.-Ing. Reiner Kupferschmidt

13

RAID-Level
•
•
•
•
•

RAID 0
RAID 1
RAID 10
RAID 5
RAID 6

- Striping
- Mirroring
- Mirrored-Striping-Array
- Block-Striping mit verteilter Parität
- Block-Striping mit waagerechter und
  senkrechter Parität
  • Weitere Mischformen sind je nach
  Anforderungen möglich und im Einsatz – dabei
  werden Vorteile kombiniert und Nachteile
  minimiert
  © Dr.-Ing. Reiner Kupferschmidt

14

Genutzte RAID-Level
RAIDLevel

LesegeSchreibgeDatenSpeicherschwindigkeit schwindigkeit sicherheit kapazität

RAID 0

++

++

--

-

RAID 1

++

- ++

  --

RAID 5

-

*

-

*

• RAID 0: Nicht ausfallsicher, dafür schnelle Lese- und
Schreibgeschwindigkeit
• RAID 1: Ausfallsicher, aber teuer
• RAID 5: Ausfallsicher, aber langsame Schreibgeschwindigkeit
© Dr.-Ing. Reiner Kupferschmidt

15

RAID-Level
Vergleich
Betrieb

RAID 0

RAID 1

RAID 5

RAID 6

Redundanz

-

*

*

*

min. Datenträger

2

2

3

4

Rechenaufwand

sehr gering

sehr gering

mittel (XOR)

hoch

Datentransferrate

höher als
Einzelplatte

beim Lesen höher als
Einzelplatte

abhängig vom
Controller

abhängig vom
Controller

Kapazität bei
2 Platten

2

1

-

-

Kapazität bei
3 Platten

3

-

2

-

Kapazität bei
4 Platten

4

2

3

2

Kapazität bei
5 Platten

5

-

4

3

Je nach Implementierung bremst der Rechenaufwand für RAID 5 und 6 beim
Schreiben. Das Lesen von mehreren Platten geht in der Regel schneller als von
nur einer Platte. Um die Datentransferrate von RAID 1, 5 und 6 zu steigern werden
zwei RAID-Verbünde zu einem
RAID 0 zusammengeschaltet. Dadurch entstehen16
© Dr.-Ing. Reiner Kupferschmidt
ein RAID 10, 50 bzw. 60.

RAID Level 0
• Striping
• 0-Datenredundanz

© Dr.-Ing. Reiner Kupferschmidt

17

Vorteile RAID 0
• Schreiben der Datenblöcke erfolgt abwechselnd auf die
Platten während die andere Platte beschäftigt ist
– ideal – doppelte Geschwindigkeit
• auch Lesen der Daten von RAID 0 ist die Transferrate
schneller
• RAID 0 eignet sich also ausschließlich zur
Geschwindigkeitssteigerung, allerdings gilt das nur bei
sequenziellem Datentransfer
• beim sequenziellen Lesen und Schreiben von großen
Dateien lassen sich alle Festplatten gleichzeitig nutzen

© Dr.-Ing. Reiner Kupferschmidt

18

Nachteile RAID 0
•
•
•
•
•
•
•

keine Datenredundanz
Ausfall einer Platte – alle Daten „weg“
Datenrettung nicht möglich
höhere Ausfallwahrscheinlichkeit
Fehler durch Controller
Motherboarddefekt – Datencrash
nur für temporäre Daten, wie
Auslagerungsdateien und SWAP
© Dr.-Ing. Reiner Kupferschmidt

19

Einzel-HDD Testprotokoll
• Zustand WD-Festplatte
vor dem RAID
• Datenrate Schreiben,
Lesen annähernd gleich
bis 16 MB
• ab 32 MB Lesegeschwindigkeit
deutlich höher

© Dr.-Ing. Reiner Kupferschmidt

20

RAID 0 Testprotokoll
• Darstellung der Datenrate
(Schreiben, Lesen)
• konstant ansteigende
Datenmenge Schreib- und Leserate in
etwa gleich
• Performancegewinn fast
100 Prozent
• etwas höhere Lesegeschwindigkeit

WD- HDD-Festplatten, WD800AAJS, 80 GB , 08.03.2016

© Dr.-Ing. Reiner Kupferschmidt

21

RAID Level 1
• Mirroring
• bestmöglicher Schutz vor Datenverlust und
Festplattenausfall
• RAID 1E – 3 Festplatten-Mirroring
• Duplexing

© Dr.-Ing. Reiner Kupferschmidt

22

Vorteile RAID 1
• Schreiben - nur so schnell, wie die langsamste
Festplatte
• Lesen – schneller als einzelne Platte – Daten
werden von der Platte geholt, die sie als erstes
bereitstellen kann
• bei Ausfall einer Platte kann mit geringem
Geschwindigkeitsverlust weiter gearbeitet
werden

© Dr.-Ing. Reiner Kupferschmidt

23

Nachteile RAID 1
• teuerster RAID-Level
• gleicher Speicherplatz – doppelter Preis
• höchste Datensicherheit, halber Speicherplatz,
für kleine Server oder NAS

© Dr.-Ing. Reiner Kupferschmidt

24

RAID1 Testprotokoll
• Schreibdurchsatz in Mbit/s

- roter Balken
  • Lesedurchsatz in Mbit/s
- grüner Balken
  • Gesteigerte Datenrate
  (Lesen) durch Zugriff auf
  verschiedene Sektoren von
  verschiedenen Platten
  • Datenrate (Schreiben)
  gleichbleibend
  • steigende Datenmenge =
  steigender Unterschied

WD- HDD-Festplatten, WD800AAJS, 80 GB, 08.03.2016

© Dr.-Ing. Reiner Kupferschmidt

25

Gegenüberstellung

einzel

RAID 0
© Dr.-Ing. Reiner Kupferschmidt

RAID 1
26

RAID-Level 5
• RAID-Level 5 ist Weiterentwicklung
aus RAID-Leveln 3 und 4
• wie bei RAID 0 werden die Daten in
Blöcke, den Stripes, aufgeteilt und
über die gesamte Festplatte verteilt
• Aus den Datenblöcken wird eine
Parität ermittelt, rotierend auf andere
DT verteilt
• gute Kombination aus Datensicherheit
und Speicherausnutzung
(80 % der Gesamtkapazität bei 5
Festplatten)

© Dr.-Ing. Reiner Kupferschmidt

A

B

ABP

B‘

0

0

0

0

0

1

1

1

1

0

1

0

1

1

0

1

Berechnung der Parität
über XOR

27

Aufbau RAID 5 (2)
• verzögertes Schreiben und Lesen

© Dr.-Ing. Reiner Kupferschmidt

28

Aufbau von RAID 5
• Block Striping mit verteilter Parität mit mindestens
3 Festplatten
• dabei wird ein Datenblock von 128 kByte in zwei
Datenblöcke von 64 kByte geteilt
• aus den beiden Datenblöcken wird die
Paritätsinformation gebildet, die einem dritten Block von
64 kByte entspricht
• Parität ist das Ergebnis einer Exklusiv-OderVerknüpfung (XOR) der Datenblöcke eines Sektors
• Parität wird aus Sicherheitsgründen nicht auf einem
separaten Laufwerk gespeichert, sondern gleichmäßig
auf alle Festplatten zwischen den Datenblöcken verteilt
(Rotating Parity) © Dr.-Ing. Reiner Kupferschmidt
29

Vorteile RAID 5
• Daten vergleichsweise sicher gespeichert,
solange bis eine Festplatte ausfällt
• bei Ausfall werden die Paritätsinformationen
benötigt, um die fehlenden Daten zu
rekonstruieren
• im Vergleich zu RAID 1 wird die
Speicherkapazität besser ausgenutzt

© Dr.-Ing. Reiner Kupferschmidt

30

Nachteile RAID 5
• Hauptnachteil ist die Notwendigkeit bei jedem
Schreibzugriff den Paritäts-Sektor auszulesen,
neu zu berechnen und wieder zu speichern
• langsame Schreibgeschwindigkeit im Vergleich
zu anderen RAID-Leveln (geschickte
Berechnungen, Puffer)
• Kapazitätsverlust durch die Speicherung der
Paritätsinformationen
Wichtig: Fällt im RAID 5 eine Festplatte aus, so sind die Daten in höchstem
Maße gefährdet. Denn fällt noch eine Festplatte aus, so sind die Daten
endgültig verloren. Ein RAID 5 verkraftet den Ausfall einer zweiten Festplatte
NICHT!!!
© Dr.-Ing. Reiner Kupferschmidt

31

RAID 6
• ein RAID-6-Verbund benötigt
mindestens vier Festplatten
• Block-Level Striping mit
doppelter verteilter
Paritätsinformation
• gleichzeitiger Ausfall von 2
Festpl. mgl.
• Wiederherstellung d. Redundanz
kann mehrere Tagen dauern
• bessere Schreibleistung wird
durch erhöhten Rechenaufwand
erkauft
• zusätzliche XOR-Operation über
eine orthogonale Datenzeile
• Paritäten werden rotierend auf
Platten verteilt
© Dr.-Ing. Reiner Kupferschmidt

32

SPAN
• VIA – Maßnahme zur Kapazitätserweiterung
ohne Leistungsgewinn
• Daten gelangen zusammenhängend auf eine
Festplatte
• auch unterschiedlich große HDD möglich ohne
Kapazitätsverlust

© Dr.-Ing. Reiner Kupferschmidt

33

JBOD
• Just a Bunch of Disks,
also: Nur ein Haufen
Festplatten
• kann auch an
verschiedenen
Schnittstellen
angeschlossenen HDD
als ein log. LW
zusammenfassen –
• VMS – Volume
Management Software
© Dr.-Ing. Reiner Kupferschmidt

34

RAID-Level 10 / 0+1
• Mirrored Striping Array
• RAID 10, auch RAID 0+1, Kombination aus
RAID 0 und RAID 1, Striping und Mirroring
• RAID 10 bietet die Vorteile von RAID 0 und
RAID 1
• RAID 10 erfordert mindestens 4 Festplatten
• RAID 10 ist besonders geeignet um große
Datenmengen redundant zu speichern
• doppelte Anzahl von Festplatten, wie RAID 1
© Dr.-Ing. Reiner Kupferschmidt

35

RAID 10 (0 + 1)
• RAID-10-Verbund ist ein
RAID 0 über mehrere RAID 1
• mind. 4 HDD
• erst Striping dann Mirroring
• Sicherheit und gesteigerte
Schreib-/Lesegeschwindigkeit
• RAID 10 gegenüber
RAID 0+1 eine bessere
Ausfallsicherheit und
schnellere Rekonstruktion
• eine Festpl. pro RAID 1 kann
ausfallen
• ½ HDD-Kapazität
© Dr.-Ing. Reiner Kupferschmidt

36

RAID 15
• drei RAID-1-Arrays als
Bestandteile für ein RAID 5
• Striping erfolgt mit einer Parität
• bei RAID 15 mit acht HDD
dürfen bis zu drei beliebige
Platten gleichzeitig ausfallen
• RAID-15-Verbund benötigt
mindestens sechs HDD
• Datendurchsatz ist gut, aber
nicht sehr hoch
• Risiko eines kompletten
Datenverlustes recht gering

© Dr.-Ing. Reiner Kupferschmidt

37

Hot Swapping
• Hot Swapping ist die Möglichkeit, Festplatten im
laufenden Betrieb auszutauschen
• Dazu muss der Bus-Controller Hot-Plugging
unterstützen (i. d. R. nur SCSI, SAS oder SATA)
• Festplatte muss im Controller/BIOS dafür
vorgesehen sein/werden
• Damit es nicht zu Datenverlust führt, ist ein
Austausch nur in Arrays mit redundanter
Datensicherung (z.B. RAID 1, 5 u.a.) möglich
© Dr.-Ing. Reiner Kupferschmidt

38

Hot-Spare-Laufwerk
•
•

•
•

•

Hot-Spare-Laufwerk ist ein
unbenutztes Reservelaufwerk
Fällt ein Laufwerk innerhalb des
RAID-Verbundes aus, wird es
durch das Reservelaufwerk ersetzt
Die physischen Laufwerke werden
durch das S.M.A.R.T-Monitoring
des Controllers überwacht
Passiv-HotSpare – Das zusätzliche
Laufwerk wird erst „gestartet“,
wenn ein RAID-LW einen Fehler
meldet und ausfällt
Aktiv-HotSpare – Das zusätzliche
Laufwerk „läuft“ während der
ganzen Zeit mit, „nutzt“ sich also
ab. Wenn ein RAID-LW einen
Fehler meldet und ausfällt wird es
sofort eingebunden du es beginnt
die Datenrekonstruktion
© Dr.-Ing. Reiner Kupferschmidt

39

Beurteilung
RAID 0

RAID 1

RAID 10

RAID 5

RAID 6

Anzahl Laufwerke

n >1

n=2

n => (2n)

n≥3

n≥4

Redundante
Laufwerke

0

1

1 (\*\*)

1

2

Kapazitäts-Overhead
bei min.
Laufwerksanzahl (%)

0

50

50

100 / n

100 / n-2

Parallele LeseOperationen

n

2

n/2

n–1

Parallele SchreibOperationen

n

1

1

n/2

Maximaler
Lesedurchsatz (\*)

n

2

n/2

n–1

Maximaler
Schreibdurchsatz (\*)

N

1

1

n/2

Kapazität
(QRAID,
QHDD, n)

QRAID
= (n) \* QHDD

QRAID
= (n/2) \* QHDD

QRAID
=(n/2) \* QHDD

QRAID
= (n-1) \* QHDD

© Dr.-Ing. Reiner Kupferschmidt

QRAID
=(n-2) \* QHDD

40

Wertung
Auswahl eines
RAID-Levels
erfordert
Kompromiss:
– Performance
– Sicherheit
– Kosten

© Dr.-Ing. Reiner Kupferschmidt

41

Übersicht RAID-Varianten
Bezeichnung
Controller-Chip
CPU-Berechnung
Performance
Alarmfunktion
Kosten
Vorteile
Nachteile

Software-RAID

Hardware-RAID

Host-RAID

nein

ja

ja

ja

nein

ja

mittel
nein

hoch
möglich

hoch
möglich

integriert
Hardwareunabhängig

mittel - hoch
entlastet Prozessor

gering
preiswert,
Motherboard

zusätzlicher DT für
hohe Kosten f.
BS,
Vorhaltung d. HW
© Dr.-Ing. Reiner Kupferschmidt
BS-abhängig

unzuverlässig,
Belastung d. CPU
42

ZFS (Zetabyte File System)
•
•
•
•

Server und Rechenzentren
große Dateisystemgröße
Einfache Verwaltung komplexer Konfigurationen
Integrierte RAID-Funktionalität
– Volumen-Management
– Prüfsummenbasierter Schutz cor Übertragungsfehlern

•
•
•
•
•
•
•
•

Datenträgerpools
Einfache Administration
Redundanz
Snapshots
Automatische Datenfehlerkorrektur
Deduplikation
Performance
Datenkapazität
© Dr.-Ing. Reiner Kupferschmidt

43

ZFS – technische Daten
Wortlänge

128 Bit

Volume Manager

integriert

Ausfallsicherheit

RAID-1
RAID-Z1 (1 Parity-Bit, ~RAID 5)
RAID-Z2 (2 Parity-Bits, ~RAID 6) und
RAID-Z3 (3 Parity-Bits) integriert

max. Größe des Dateisystems1

16 EiB (= 264 Byte)

max. Anzahl an Dateien in einem Dateisystem

248

max. Größe einer Datei1

16 EiB (= 264 Byte)

max. Größe jedes Pools

2128 Byte

max. Anzahl an Dateien in einem Verzeichnis

248

max. Anzahl an Geräten im Pool

264

max. Anzahl an Dateisystemen im Pool

264

max. Anzahl an Pools im System

264

© Dr.-Ing. Reiner Kupferschmidt

44

IEC-Präfixe zur Basis 2
Name

Symbol

Wert

kibi

Ki

210 = 10241 = 1.024

mebi

Mi

220 = 10242 = 1.048.576

gibi

Gi

230 = 10243 = 1.073.741.824

tebi

Ti

240 = 10244 = 1.099.511.627.776

pebi

Pi

250 = 10245 = 1.125.899.906.842.624

exbi

Ei

260 = 10246 = 1.152.921.504.606.846.976

zebi

Zi

270 = 10247 = 1.180.591.620.717.411.303.424

yobi

Yi

280 = 10248 = 1.208.925.819.614.629.174.706.176
© Dr.-Ing. Reiner Kupferschmidt

45

Lernzielkontrolle

1.

2.
3.
4.
5.
6.
7.
8.
9.
10.
11.
12.
13.
14.
15.

Was bedeutet die Abkürzung RAID? Anmerkung: Das I hat je nach Sichtweise zwei
Bedeutungen.
Welche Standard-RAID-Level ﬁnden heute Verwendung?
Skizzieren Sie anhand von vier Festplatten die prinzipielle Verteilung der Blöcke bei
RAID-Level 10!
Nennen Sie einen Einsatzbereich für RAID-Level 0 und begründen Sie diese!
Was versteht man unter dem RAID-Level 1?
Wie viele Festplatten benötigt mindestens ein
RAID-Level 5-System?
Was versteht man unter dem RAID-Level 15 und nennen Sie jeweils ein Vor- und
einen Nachteil?
Was versteht man unter dem RAID-Level 10?
Was versteht man unter RAID-Level 6?
Was verstehen Sie unter JBOD?
Was verstehen Sie unter einem physischen und was unter einem logischen
Laufwerk?
Welche Aufgaben hat ein RAID-Controller?
Was verstehen Sie unter einem Hotspare-Laufwerk?
Was verstehen Sie unter Hotplug? Was müssen Sie dabei beachten?
Was verstehen Sie unter SMART-Monitoring? Nennen Sie mindestens 5 relevante
Werte und erläutern Sie diese?
(Zeit 45 min)
© Dr.-Ing. Reiner Kupferschmidt

46

Abschluss
Vielen Dank für Ihre Aufmerksamkeit!

Für weitere Fragen stehe ich Ihnen gerne zur
Verfügung.

© Dr.-Ing. Reiner Kupferschmidt

48
