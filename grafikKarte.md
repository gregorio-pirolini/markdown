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

# Grafikkarten

https://www.markdownguide.org/basic-syntax/

## Wie kommen die Bilder auf den Bildschirm?

## 1 Gliederung / structure

- Aufbau und Funktionsweise
- Bus-Interface
- Grafikspeicher
- Grafikprozessor
- Kühllösungen
- RAMDAC [^1]

  [^1]: Le RAMDAC (Random Access Memory Digital-to-Analog Converter) est un convertisseur numérique-analogique, c'est-à-dire un composant électronique chargé de convertir l'image numérique stockée dans la mémoire vidéo en signal analogique destiné au moniteur.

- Externe Signalausgänge

## 3 Grafikeinheit oder Grafikkarte

- Verarbeitet die Daten der CPU und leitet sie an den Monitor weiter
- Onboardlösung
- Auf der CPU – APU – [^2]

  [^2]: Accelerating prozessing Unit\*\*

- Grafikkarte

## 4 Aufbau und Funktion Teil 1

- Platine
- Spannungswandler/Stromzufuhr
- Bus-Interface
- Grafikprozessor
- Videospeicher
- RAMDAC[^1]
- Kühllösungen
- Video-Out-Controler

## 5 Eingliederung Gesamtsystem

![Eingliederung!](/img/eingliederung.png "Eingliederung Gesamtsystem")

## 6 Aufbau und Funktion Teil 2

![Aufbau und Funktion!](/img/aufbauFunktionGrafikKarte.png "Aufbau und Funktion")

- GPU
- SpeicherController
- Grafikspeicher
- HostInterface
- PCI-Express
- Video-Output Controller
- RAM-DAC
- VGA H
- DMI
- Displayport
- Befehle für den Bildaufbau

## 7 Platine

- Mainboard der Grafikkarte
- Datenverkehr
  - Multi-Layer-Design
  - 800 Datenleitungen Video-RAM - GPU
  - 14 Layer
- Regulierung der Spannungen
- Ansteuerung der Monitoransschlüsse
- Verknüpfung mehrerer Grafikkarten (SLI, Crossfire)
- PCI-Express 3.0 16x (16 parallele Leitungen, 16 Gbyte/s)

## 8 Spannungsversorgung

- Stromhungrigste Komponente
- PCIe-Anschluss – 75 W
- Spannungsversorgung Netzteil 6-polig – 75 W
- Spannungsversorgung Netzteil 8-polig – 150 W
- Spannungsregler VRM (12/3,3 V in ~ 1 V)

| Summe | Versorgungskomponenten           |
| ----- | -------------------------------- |
| 75 W  | Ohne Extrakabel – nur PCIe       |
| 150 W | 6-pol. Kabel (75 W zus.)         |
| 225 W | 8-pol. Kabel (150 W zus.)        |
| 225 W | 2 x 6-pol. oder 1 x 8-pol. Kabel |
| 300 W | 6-pol. und 1 x 8 pol. Kabel      |
| 375 W | 2 x 8 pol. Kabel                 |

KEINE Adapter verwenden, kann zur Überlastung des Netzteils führen!!!

## 9 Grafikspeicher

- Ablage der im Grafikprozessor (GPU) verarbeiteten Daten, sowie als Bildspeicher
- Zwischenspeicher von Daten
- Speicherbausteine mit je 256 MB (1 – 6 GB)
- GDDR3 1.250 MHz, GDDR5 3.500 MHz
- Halbleiterspeicher, der nur für den Grafikprozessor - die GPU - zur Verfügung steht (dedizierter Speicher) – schnellerer Zugriff
- Größe des Grafikspeichers bestimmt die maximale Farbtiefe und Bildauflösung
- bei einer Onboard-Grafikkarte wird ein reservierter Bereich des normalen Arbeitsspeichers vom Motherboard für die Grafik abgestellt (shared memory)

## 10 Bus-Interface

Stellt die Verbindung zwischen dem den Chipsätzen des Motherboards und der Grafikkarte her

- ISA, VESA Local Bus
- PCI
- AGP
- PCI Express

## 11 PCI vs. PCIe

## 12 PCI

| Parameter | PCI 2.0 | PCI 32 bit 2.1 | PCI 64 bit 2.1 | PCI 2.2 | PCI 2.3 | PCI 3.0 |
| -------------------------- | ------- | -------------- | -------------- | ------- | ------- | ------- |
| Max. Busbreite in Bit      | 32      | 32             | 64             | 64      | 64      | 64      |
| Max. Taktrate in MHz       | 33      | 66             | 66             | 66      | 66      | 66      |
| Max. Datenrate‡ in GByte/s | 0,133   | 0,266          | 0,533          | 0,533   | 0,533   | 0,533   |
| Max. Datenrate‡ in GBit/s  | 1,066   | 2,133          | 4,266          | 4,266   | 4,266   | 4,266   |
| Slots pro Bridge           | 4       | 4              | 2              | 2       | 2       | 2       | Spannung in Volt | 5   | 5/3,3† | 5/3,3† | 5/3,3† | 3,3 | 3,3 |
| Jahr der Einführung        | 1993    | 1994           | 1994           | 1999    | 2002    | 2004    |

## 13 PCI Express

Datenrate PCI Express  
Burstrate ohne Protokoll-Overhead  
| |16 PCIe 1.0/1.1 |PCIe 2.0/2.1 |PCIe 3.0 | PCIe 4.0|
|---|---|---|---|---|
|Erschienen |2003 |2007 |2012 |~2015 [1]|
|Taktrate |1,25 GHz |2,5 GHz |4,0 GHz |~8,0 GHz|
|Transfers/s (je Lane und Richtung) |2,5 GT/s |5,0 GT/s |8,0 GT/s |16,0 GT/s [2]|
|Kodierung |8b10b | 8b10b |128b130b |? |
|Lanes (Breite)| | | | |
| x1 |250 MB/s |500 MB/s |985 MB/s |1969 MB/s|
|x2 |500 MB/s |1000 MB/s |1969 MB/s |3938 MB/s |
|x4 |1000 MB/s |2000 MB/s |3938 MB/s |7876 MB/s |
|x8 |2000 MB/s |4000 MB/s |7877 MB/s |15752 MB/s|
| x16 4000 MB/s |8000 MB/s| 15754 MB/s |31504 MB/s |
|(x32) |8000 MB/s |16000 MB/s |31508 MB/s| 63008 MB/s

## 14 Übertragungsgeschwindigkeit

| PCIe | Bandbreite | pro Lane | PCIe x1        | PCIe x4       | PCIe x8       | PCIe x16       | Kodierung/B alast | Verfügbar seit |
| ---- | ----- | ----- | ----- | ---- | ------ | ---- | ------ | ------ |
| 1.0  | 2,5 GT/s                         | 2,5 GBit/s | 250 MByte/s    | 1 GByte/s     | 2 GByte/s     | 4 GByte/s      | 8b10b / 20%       | 2004           |
| 2.0  | 5 GT/s                           | 5 GBit/s   | 500 MByte/s    | 2 GByte/s     | 4 GByte/s     | 8 GByte/s      | 8b10b / 20%       | 2008           |
| 3.0  | 8 GT/s                           | 10 GBit/s  | 0,9846 GByte/s | 3,938 GByte/s | 7,877 GByte/s | 15,754 GByte/s | 128b/130b /2%     | 2011           |
| 4.0  | 16 GT/s                          | 20 GBit/s  | 1,969 GBit/s   | 7,877 GBit/s  | 15,754 GBit/s | 31,508 GBit/s  | 128b/130b /2%     | 2017           |
| 5.0  | 32 GT/s                          |            | 3,9 GBit/s     | 15,8 GBit/s   | 31,5 GBit/s   | 63 GBit/s      | 128b/130b /2%     | ?              |

## 15 missing page

## 16 missing page

## 17 Grafikprozesor?

## 18 shadder?

## 19 - 20 - 21 Intel Graphics Gen. 11

NVIDIA Geforce GTX 680 Kepler SLI EVGA ZOTAC

## 22 RAMDAC

- Random Access Memory Digital Analog Converter
- Bindeglied zwischen dem Digital-Signal des Grafikchips und dem VGA-Monitorausgang (analog)
- Wandelt Bildinformationen vom Grafikspeicher (RAM) in ein für den Monitor verständliches analoges Signal um
- Je höher die Frequenzangabe des RAMDAC's ist, desto höhere Bildwiederholraten sind bei genutzter Auflösung möglich
- Jede Grundfarbe R/G/B (Rot, Grün, Blau) wird ein D/AWandler benötigt
- Setzt den digitalen Farbwert der Grundfarbe in einen analogen Spannungswert um

## 23 Kühllösungen

- passive Kühlung (Strahlung, Konvektion)
- aktive Kühlung (Lüfter/Kühler/Heatpipe, Wasserkühlung, Flüssigmetall-Kühlung, Peltier)

## 24 Video-Out-Controller

- Verwaltet die Signale, auch die er vom RAMDAC erhält, leitet diese an die entsprechenden Ausgänge weiter
- Ermöglicht die Benutzung von 2 und mehr Anzeigegeräten

## 25 Externe Signalausgänge

|Analog |Digital |
| ---|--- |
|VGA| DVI |
|DVI |HDMI |
|TV-Ausgang| Displayport|

## 26 VGA Teil 1

Video Graphics Array - von IBM eingeführt, analog • 640 x 480 Pixel mit 16 Farben • 2048 x 1536 Pixel bei 256 • 65536 (HiColor) oder 16,7 Mio. (TrueColor) Farben • bis 30 m Kabellänge

## 27 VGA Teil 2

Die Buchse in Steckrichtung. Pin Funktion 1 Rot (0,7 Vss @ 75 Ohm) 2 Grün (Pegel & Impedanz dto.) oder (analoges) Monochromsignal 3 Blau (Pegel & Impedanz dto.) 4 ID2 (Monitor-IDentifizierung #2) oder Reserve 5 digitale Masse für DDC 6 analoge Masse für Rot 7 analoge Masse für Grün 8 analoge Masse für Blau 9 nicht belegt; glgt. +5V von der Grafikkarte (= Computer angeschlossen) 10 analoge Masse für Synchronsignale 11 ID0 12 ID1 oder digit. Datenaustausch (DDC – SDA, Serial DAta = Datenleitg.) 13 Horizontale Synchronisation oder gemeinsame Sync. (H + V) 14 Vertikale Synchronisation 15 Digit. Datenaustausch (DDC – SCL, Serial CLock = Taktleitg.)

## 28 DVI

Digital Visual Interface DVI

- DVI-I-Kabel - digitale und analoge Signale (SingleLink) hat 18 + 5 Kontakte und reicht für WUXGAAuflösung 1920 x 1200 bei 60 Hz
- 24+5 Kontakten haben zwei TMDS\_-Verbindungen (Dual-Link) für hoch auflösende Bildschirme, beispielsweise WQXGA, maximal 2560 × 1600 Bildpunkte bei 60 Hz
- DVI-D nur digitale Signale, Single-L.18+1/17+1, WUXGA 1920 x 1200 bei 60 Hz
- Dual-L. 24+1 +weitere TMDS 2560 x 1600 bei 60 Hz
- DVI-A nur analoge Signale, 12 + 5, nur als Adapter zu VGA, können auch in DVI-Anschlüssen eingesetzt werden

## 30 HDMI

HDMI-Standard (1.2) - Homevideo- und Homeaudioanwendungen bis 15 m, Datenrate beträgt mindestens 3,96 Gbit/s • HDMI-Standard with Ethernet • HDMI-Standard Automotive • HDMI-High Speed 2.1 Full HD 3D, Deep Color und 4k2k, 7,5 m, 38,4 Gbit/s • HDMI-High Speed with Ethernet zusätzlich Audio-ReturnChannel (ARC) 31

## 31 Displayport

Umstieg auf digitale Schnittstellen, weniger Platz, bis 15 m Kabellänge • zusätzlicher Kanal für Gerätesteuerung • erlaubt Kompatibilität zu DVI und HDMI • DisplayPort 1.3 wird die Kompatibilität zu Ultra-HD in der 8k-Auflösung aufweisen (7680×4320 Pixel als auch 8192×4320 Pixel) • 8,1 Gbps

## 32 Thunderbolt

Konkurrenz zu USB3.0 • zwei Vollduplex-Kanäle mit je 10 GBit/s pro Kanal bereit. Das bedeutet eine Datenrate von 20 GBit/s in beide Richtungen • Einbindung 4K-Display um 4K-Videodaten zu übertragen, gleiche Kabel/Stecker w. ThB 1 • Thunderbolt 2.0 erreicht bis zu 1.300 MByte/s, Vergleich dazu USB 3.0 nicht mehr als 400 MByte/s • Thunderbolt 3.0 PCI Express 3.0, höhere Leistung mit bis zu 40 GBit/s – 2 4k-Displ. • 100 W für Ladung v. Akkus 33

## 33 TV-Ausgang

TV-Out, kann das Signal der Grafikkarte am TVGerät • Cinchbuchse (als Compositsignal) oder über eine Mini-DIN-Buchse als S-Video nach außen geführt • mittelmäßige Signalqualität 34

## 34 Auflösung und Farbtiefe

Bildauflösung/ Farbtiefe 640 x 480 VGA 800 x 600 SVGA 1024 x 768 XGA 1152 x 864 1280 x 1024 SXGA 1600 x 1200 UltraXGA 8-bit 256 Farben 307k-Byte 480k-Byte 786k-Byte 1M-Byte 1.3M-Byte 1.9M-Byte 16-bit 65536 Farben 614k-Byte 960k-Byte 1.6M-Byte 2M-Byte 2.6M-Byte 3.9M-Byte 24-bit 16.7Mio Farben 921k-Byte 1.5M-Byte 2.4M-Byte 3M-Byte 3.9M-Byte 5.7M-Byte

## 35 „Neuere“ Auflösungen

Abkürzung X x Y X : Y X \_ Y HD 720 (2005) 1280 x 720 16 : 9 921.600 HD 1080, 1080p 1920 x 1080 16 : 9 2.073.600 UHD 4K, 2160p (2013) 3840 x 2160 16 : 9 8.294.400 FUHD, 4320p, 8K 7680 x 4320 16 : 9 33.177.600 QUHD, 8640p, 16K 15360 x 8640 16 : 9 132.710.400 36

## 36 Synchronisation

- Tearing
- V-Sync
- G-Sync
- Free-Sync
- GPU-Beschleunigung
- Intelli-Quick Sync
- PhysX
- Physik-Engine

## 37 Tearing

- Ein Bild auf dem Monitor wird in Halbbilder - zerlegt
- Diese Halbbilder werden bei diesem Effekt horizontal versetzt, passen nicht mehr zusammen
- Störende Artefakte
- Ist die Ausgaberate viel höher als der Monitor in der Lage ist, werden die Synchronisationsverfahren auf V-Sync umgestellt

## 38 V -Sync

Bildaufbau findet zeilenweise statt • Wenn Bilddaten sich während des Bildaufbaus ändern, können Darstellungsfehler s. g. Glitches entstehen • Typisch bei geraden Kanten • Nutzt Triple- oder DoubleBuffering um Tearing auszugleichen • Nachteil: – Eingabeverzögerung – Framerate kann nur in 30 Hz - Schritten verändert werden © Dr. -Ing. Reiner Kupferschmidt 39

## 39 G-Sync

- Nvidia
- Zusätzliches Hardware-Modul im Monitor
- Funktioniert bei Displayport, DVI, HDMI 2

## 40 Fast-Sync

Das Buffering erfolgt an der Ebene des Treibers

## 41 Free-Sync

- AMD
- Softwarelösung
- Hardware-abhängig

## 42 GPU-Beschleunigung

- GPU - Graphic Processing Unit - Rechenkern der Grafikkarte
- GPU-Beschleunigung - der Prozessor, also die CPU, wird von dem Rechenkern der Grafikkarte unterstützt 
- Aktuelle Browser wie Firefox usw. unterstützen mittlerweile auch diese Beschleunigung
- der Prozessor muss nicht alles "alleine" berechnen 43

## 43 Intel-Quick Sync

Umwandlung von Bildern zur Darstellung auf Monitoren mit geringerer Auflösung 44

## 44 PhysX

Verlagert die Berechnung physikalischer Effekte von CPU auf die GPU • Entlastung CPU • NVIDIA • Erhöhung der Qualität d. Effekte • Lediglich Nutzung von einem Kern, Nutzung von veralteten X-87-Befehlen für Gleitkommaberechnung (8-bit-Befehle)

## 45 Lernzielkontrolle

- Füllen Sie die Tabelle aus (Aufbau der Grafikkarte (Blockdarstellung))
- Nennen Sie mindestens 2 Unterschiede zwischen PCI und PCIe!
- Wozu dient der Grafikspeicher?
- Was verstehen Sie unter dediziertem und was unter shared Memory?
- Wozu dient der RAMDAC?
- Nennen Sie mindestens 3 Kühlmöglichkeiten für eine Grafikkarte!
- Nennen Sie 3 externe Signalausgänge für „Grafikinformationen“
- Nennen Sie 3 wesentliche Unterscheidungsmerkmale zu den externen Grafikschnittstellen!
- Was verstehen Sie unter Tearing?
- Was bewirken die Synchronisationslösungen, wie G-Sync und Free-Sync?
- Wie unterscheiden sich G-Sync und Free-Sync voneinander? Nennen sie 2 Merkmale!
- Was verstehen Sie unter On-Board- und was unter On-Chip-Grafik? Welche lässt sich im BIOS/UEFI schalten?
- Welche elektrische Leistung kann die PCIe-Schnittstelle bereitstellen?
- Es gibt Grafikkarten von 150 W Verlustleistung und mehr. Welche Möglichkeit kennen Sie, diese mit der erforderlichen Leistung zu versorgen? Was ist dabei zu beachten?
- Wie unterscheiden sich CPU und GPU?
- Was verstehen Sie unter Shader?
- Nennen Sie mindestens 5 Shader und ihren Zweck!
