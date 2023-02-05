<style>
h1 { color: Red }
h2 { color: green }
h3 { color: blue; background-color: white;}
h4 { color: red;}
h5 { color: yellow;}
f{ color: red;
font-weight: bold;
text-decoration: underline;}
</style>

# Kühlung von PC und Co

## 1 Wohin mit der Energie?

## 2 3 Gliederung

- Physikalische Grundlagen
- Woher kommt die „Wärme“
- Was ist die „TDP“[^1]
- Aktiv oder passiv
- Kühlungsmöglichkeiten passiv
- Kühlungsmöglichleiten aktiv
- Wärmeleitpaste?
- Heatpipe?
- Strömungsverhalten im Gehäuse
  [^1]: „TDP“

## 4 Physikalische Grundlagen

- Kühlung ist der „Abtransport“
  der in Wärmenergie
  umgewandelten elektrischen
  Energie
- Erfolgt von „heißer“ Quelle zu
  „kalter“ Senke
- Strahlung (erfordert kein
  Medium, kann nicht aktiv
  beeinflusst werden)
- Leitung (erfordert Medium,
  materialabhängig, kann nicht
  aktiv beeinflusst werden)
- Strömung (erfordert Medium,
  materialabhängig, kann aktiv
  beeinflusst werden)

![Physikalische Grundlagen!](img/k1.jpg "Physikalische Grundlagen")

## 5 Woher kommt die „Wärme“?

### Elektrische Energie wird im elektronischen Bauelement auf Grund von Folgendem in Wärmeenergie umgewandelt

- Ohmschen Widerständen
- Kapazitiven Umladungen (+, -)
- Taktfrequenz

### Fast die komplette elektrische Energie wird umgewandelt

## 6 Was ist TDP[^2]?

[^2]: TDP Thermal Design Power

- Thermal Design Power – Berechnete Thermische Verlustleistung
- Maximaler Wert für elektronische Geräte und Komponeten (CPU,
  GPU, …)
- Grundlage für Kühlung u. Netzteil
- Angegebener Wert meist größer als tatsächliche TDP
- Hersteller fassen TDP in Gruppen zusammen
- Leitlinie für Mainboard und Kühl-Körper(-Varianten)-Hersteller

### Ist abhängig unter anderem von

- Taktfrequenz
- Vcore
- Umgebungstemperatur
- Strukturgröße
- Materialübergängen (Nacktchip, Heatspreader, Wärmeleitpaste)

<f>Je höher die TDP-Klasse desto höher der Aufwand für die Kühlung –
Erhöhung von Zuverlässigkeit und Verfügbarkeit!</f>

## 7 Aktiv oder Passiv?

### Aktiv

- Wärmeenergie durch Zuführung von „Fremd“-Energie
  abgeführt bzw. transportiert
- Strömung kann beeinflusst werden
- Lüfter, Pumpen, elektrophysikalische Effekte (Peltier)
- Game-PC, Server

### Passiv

- Wärmeenergie wird ohne Zuführung von „Fremd“-Energie
  abgeführt bzw. transportiert
- Strahlung – Gestaltung der Oberfläche
- Leitung – Materialien mit guten Wärmeleitkoeffizient,
  Wärmebrücken
- Vermeidung von Wärmeisolation (Luft, Vakuum)
- Smartphone, Mini-, Micro-PC, Raspberry Pi

## 8 Entwicklung 1

![Entwicklung!](img/k2.jpg "Entwicklung")

## 9 Entwicklung 2

![Entwicklung!](img/k3.jpg "Entwicklung")

## 10 Kühlung - Passiv

![Passiv!](img/k4.jpg "Passiv")
![Passiv!](img/k5.jpg "Passiv")
![Passiv!](img/k6.jpg "Passiv")
![Passiv!](img/k7.jpg "Passiv")
![Passiv!](img/k8.jpg "Passiv")

## 11 Kühlung – Aktiv – Topflow-Kühler

![Aktiv!](img/k9.jpg "Aktiv")

## 12 Kühlung – Aktiv – Turm-Kühler

![Aktiv!](img/k10.jpg "Aktiv")

## 13 Kühlung – Aktiv – Radial-Kühler

![Aktiv!](img/k11.jpg "Aktiv")

## 14 Kühlung – Aktiv – Kompaktwasserkühlung

![Aktiv!](img/k12.jpg "Aktiv")

## 15 Kühlung – Aktiv – FlüssigmetallKühlung

![Aktiv!](img/k13.jpg "Aktiv")

![Aktiv!](img/k14.jpg "Aktiv")

## 16 Kühlung – Aktiv – Peltier-Kühlung

![Aktiv!](img/k15.jpg "Aktiv")

![Aktiv!](img/k16.jpg "Aktiv")

![Aktiv!](img/k17.jpg "Aktiv")

## 17 Wärmeübergang?

![Wärmeübergang!](img/k18.png "Wärmeübergang")

1. Kühlkörper
2. Wärmeübergang 2
3. Heatspreader (Verkappung)
4. Wärmeübergang 1
5. Die (Chip)

- Die Wärmeübergänge sollten so effektiv als möglich
  gestaltet werden
- Die Grenzflächen sind nicht 100 %ig eben
- Für möglichst geringen Wärmewiderstand werden div.
  Hilfsmittel eingesetzt
  - Wärmeleitpaste
  - Flüssigmetall
  - Wärmeleitpad

## 18 Wärmeleitpaste

![Wärmeübergang!](img/k19.jpg "Wärmeübergang")

![Wärmeübergang!](img/k20.jpg "Wärmeübergang")

- Dient dem Ausgleich der
  Unebenheiten zwischen
  Die/Heatspreader und
  Kühlkörper/Collector
- Vermeidung von
  Lufteinschlüssen
- Silikonöl und Zinkoxid
  (Aluminium-, Graphit- oder
  Silberbestandteile - leitfähig)
- Nichtleitfähige Pasten auf
  Kohlenstoffbasis

## 19 Werkzeuge?

![Werkzeuge!](img/k21.jpg "Werkzeuge")

- Plastikkarte, Reinigungstuch
- Wärmeleitpaste
- Reinigungsflüssigkeit (Isopropanol, H2O)

## 20 Welche Menge?

![Menge!](img/k22.jpg "Menge")
![Menge!](img/k23.jpg "Menge")

- Etwa ein erbsengroßes „Stück“, je nach Prozessorgröße
- Auf dem Die oder Heatspreader je nach Hotspot verstreichen
- Oder einfach dem Anpressdruck des Kühlkörpers überlassen

## 21 Wärmeleitung – Flüssigmetall?

### Vorteil

- trocknet nicht aus
- Höherer
  Wärmeleitkoeffizient
- Niedrigere Temperaturen
  der CPU

### Nachteil

- Reagiert mit anderen Metallen bes. Aluminium

![Menge!](img/k24.jpg "Menge")
![Menge!](img/k25.jpg "Menge")

## 22 Heatpipe - Aufbau

- Wartungsfreier Wärmetransporteur
- Funktioniert meist unabhängig von der Schwerkraft
- Kapilarwirkung

![Heatpipe!](img/k26.jpg "Heatpipe")
![Heatpipe!](img/k27.jpg "Heatpipe")
![Heatpipe!](img/k28.jpg "Heatpipe")

## 23 Heatpipe - Funktionsweise

![Heatpipe!](img/k29.jpg "Heatpipe")

1. In der heißen Zone nimmt die Heatpipe die Wärme auf
2. Die enthaltende Flüssigkeit wandelt sich in ein Gas um
3. Dieses strömt zur anderen Seite, wo es abkühlt und sich wieder verflüssigt
4. Und an den Innenseiten wieder zurückläuft

## 24 Vapor Chamber 1

![Vapor Chamber!](img/k30.jpg "Vapor Chamber")

1. Verdampfung, Wärmequelle (z. B. Prozessor)
2. Dampfphase (verdunstetes Kühlmittel)
3. Abgabe der Wärmeenergie an Kühlrippen (Kondensation)
4. Abtransport der Wärmeenergie durch Luftströmung
5. Rückfluss durch Kapillarwirkung

## 25 Vapor Chamber 2

![Vapor Chamber!](img/k31.jpg "Vapor Chamber")

## 26 Vapor Chamber 3

![Vapor Chamber!](img/k32.jpg "Vapor Chamber")

- Vereinfacht - flache Heatpipes
- Vapour Chambers werden horizontal verwendet
- Vapour Chambers transportieren die Wärme deutlich langsamer als HP

## 27 Vapor Chamber 4

![Vapor Chamber!](img/k33.jpg "Vapor Chamber")

## 28 Luftkühlung

- Unterstützung der Strömung durch Ventilatoren
- Zur Beachtung
  - definierter Luftstrom
  - Keine Verwirbelungen
  - Leichter gefilterter Überdruck im Gehäuse zur Vermeidung von Verschmutzungen

![Vapor Chamber!](img/k34.jpg "Vapor Chamber")

## 29 Optimaler Luftstrom

![Optimaler Luftstrom!](img/k35.png "Optimaler Luftstrom")

## 30 So oder so?

![So oder so!](img/k36.jpg "So oder so")

![So oder so!](img/k37.jpg "So oder so")

## 31 Wasserkühlung

![Wasserkühlung!](img/k38.jpg "Wasserkühlung")

- Arbeitet ähnlich einer Warmwasserheizung
- Wasser „ersetzt“ den Luftstrom
- Aber nicht vollständig!
- Bauelemente sind wärmetechnisch in Reihe zu schalten
- Benötigt Lüfter für Radiatoren (Wärmetauscher)
- Luftkühlung für div. Bauelemente auf Motherboard
  - Spannungswandler
  - Chipsatz
  - Arbeitsspeicher
  - …

## 32 Lüftersteuerung

![Lüftersteuerung!](img/k39.jpg "Lüftersteuerung")

- Fan-Anschlüsse
  - 3-polig
  - 4-polig (geregelt)
  - 12 V
  - Möglichst großer dmr.

## 33 Flüssigmetallkühlung

![Lüftersteuerung!](img/k40.jpg "Lüftersteuerung")

### Flüssigmetall ersetzt Wasser

### Wird durch starke Magnetfelder umgewälzt

### Vorteile

- Keine Mechanik
- Sehr langlebig
- Sehr gute Kühlleistung

### Nachteile

- Hohe Ströme
- Und somit starke Magnetfelder
- Hoher Preis -> 120€

## 34 Kompressorkühlung

![Kompressorkühlung!](img/k41.jpg "Kompressorkühlung")

- Funktion ähnlich Kühlschrank
- Hoher Aufwand
- Laut
- Effektiv
- Komplexer Aufbau
- Schwierig zu ergänzen und zu warten
- Probleme mit Kältemittel
- Individuallösungen

## 35 Kompressorkühlung - Funktionsweise

![Kompressorkühlung!](img/k42.jpg "Kompressorkühlung")

1. Verdichter/Kompressor
2. Hochdruckleitung (heiß),gasförmig
3. Verflüssiger (Kondensator, Kühlung des Kältemittels) /gasförmig zu flüssig
4. Lüfter
5. Filter /flüssig
6. Kapillarrohr (Drosselorgan) /flüssig
7. Evaporator (Verdampfer) /flüssig zu gasförmig
8. HX (Heatexchanger)
9. Anschlüsse für den Kühlkreislauf
10. Niederdruck- oder auch Saugleitung /gasförmig

## 36 Weitere Lösungen…

![Kompressorkühlung!](img/k43.jpg "Kompressorkühlung")

![Kompressorkühlung!](img/k44.jpg "Kompressorkühlung")

![Kompressorkühlung!](img/k45.jpg "Kompressorkühlung")

- Peltierelemente
- Trockeneiskühlung
- Stickstoffkühlung
- „trockenes“ Wasser
- Ölbad
- …

## 37 Komponente Software und Messmethode und Temperaturbereich

| Komponente                   | Software und Messmethode                             | <td colspan =3 >Temperaturbereich in °C     |                                              |                                         |
| ---------------------------- | ---------------------------------------------------- | ------------------------------------------- | -------------------------------------------- | --------------------------------------- |
| CPU Kerntemperatur           | Core Temp, HWINFO AMD: AMD-Overdrive, Intel:Realtemp | <div style="background-color:green"> Bis 55 | <div style="background-color:orange">56-74   | <div style="background-color:red">Ab 75 |
| CPU Spannungswandler         | Temperaturfühler auf der Rückseite der Platine       | <div style="background-color:green">Bis 55  | <div style="background-color:orange">61-89   | <div style="background-color:red">Ab 90 |
| Chipsatz                     | Temperaturfühler auf der Rückseite der Platine       | <div style="background-color:green">Bis 50  | <div style="background-color:orange">51-59   | <div style="background-color:red">Ab 60 |
| Grafikkarte - GPU            | GPU-Z, MSI-Afterburner                               | <div style="background-color:green">Bis 70  | <div style="background-color:orange">71-89   | <div style="background-color:red">ab 90 |
| Grafikkarte Spannungswandler | GPU-Z, MSI-Afterburner                               | <div style="background-color:green">Bis 100 | <div style="background-color:orange">101-109 | Ab 110                                  |
| HDD/SSD                      | Crystal Disk Info                                    | <div style="background-color:green">Bis 45  | <div style="background-color:orange">46-59   | <div style="background-color:red">Ab 60 |

## 38 Lernerfolgskontrolle

- Was ist Kühlung?
- Was passiert während der Kühlung?
- Welche physikalischen Vorgänge liegen der Kühlung zu Grunde?
- Welche Arten der Kühlung kennen Sie? Nennen Sie je 2 Beispiele!
- Welcher Parameter eines Prozessors ist maßgeblich für die Dimensionierung der Kühlung bestimmend?
- Nennen Sie mindestens 4 Faktoren die diesen Parameter des Prozessors beeinflussen!
- Nennen Sie mindestens 4 aktive Kühlmöglichkeiten und erläutern Sie das Funktionsprinzip in ein bis zwei Stichpunkten!
- Zeichnen Sie in den Querschnitt eines PC den Lauf der Kühlluft und die zu verbauenden Lüfter ein!
- Nennen Sie mindestens 4 Fehler, die bei dem Aufbau der Kühlung nicht passieren dürfen!
- Welchen Zweck soll die Wärmeleitpaste erfüllen?
- Welche Bauelemente werden mit Wärmeleitpaste „verbunden“?
- Was ist beim Auftragen der Wärmeleitpaste zu beachten?
- Erläutern Sie die Funktionsweise einer Heatpipe?
- Was sind die Unterschiede zwischen aktiver und passiver Kühlung?

## 39 Quellen

https://www.legitreviews.com/wp-content/uploads/2014/01/Thermaltake-Core-V71-full-tower-case-is-the-ultimate-powerhouse-suitable-for-anytype-of-PC-enthusiast-%E2%80%93-no-matter-liquid-cooling-or-extreme-airflow.jpg  
https://www.computerbase.de/2018-08/cpu-tdp-verbrauch-amd-intel/  
https://www.karlrupp.net/wp-content/uploads/2013/06/tdp.png  
https://www.powerelectronicsnews.com/thermal-design-for-a-high-density-gan-based-power-stage/  
https://www.pcmasters.de/system/photos/7992/full/m__c54dc4fbcb40012cd142c7a999f79b478122142131728__m.jpg?1392720220  
http://www.sigem-elektronik.de/computer/angebot/bilder/kk_graka.jpg  
https://www.fujitsu.com/global/Images/11-1e_tcm100-1559501.jpg  
https://www.pcgameshardware.de/screenshots/medium/2009/07/_DSC5673.jpg  
https://www.allround-pc.com/wp-content/uploads/2015/03/Corsair-H110i-GT-Lieferumfang.jpg  
https://www.computerbase.de/2005-05/sapphire-entwickelt-fluessigmetallkuehlung/#bilder
https://extreme.pcgameshardware.de/luftkuehlung/43786-howto-sammelthread-fluessigmetall-waermeleitmittel.html
https://de.wikipedia.org/wiki/W%C3%A4rmerohr
