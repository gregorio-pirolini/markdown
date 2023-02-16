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

# MBR, GPT, Partitionen, Dateiformate

## 1 Einführung

## 2 Aufbau MBR

### Jedes LLW[^1] hat eine Partitionstabelle mit 2 Einträgen:

- das eigentliche LLW[^1]
- nächste PT für nächstes LLW[^1]

[^1]: LLW Logisches Laufwerk

### MBR[^2]: Masterbootrecord mit Partitionstabelle der Festplatte

### pP#[^3]: primäre Partition

### eP[^4]: erweiterte Partition

### PT[^5]: Partitionstabelle je LLW[^1], Bootsektor

### LLW[^1]: Logisches Laufwerk

[^2]: MBR Masterbootrecord mit Partitionstabelle der Festplatte
[^3]: pP# primäre Partition
[^4]: eP erweiterte Partition
[^5]: PT Partitionstabelle

## 3 Berechnung des Speichervolumens

| Dezimal | Binär  | Hexadez. |
| ------- | ------ | -------- |
| 1       | 0001   | 1        |
| 2       | 0010   | 2        |
| 3       | 0011   | 3        |
| 4       | 0100   | 4        |
| 5       | 0101   | 5        |
| 6       | 0110   | 6        |
| 7       | 0111   | 7        |
| 8       | 1000   | 8        |
| 9       | 1001   | 9        |
| 10      | 1010   | A        |
| 11      | 1011   | B        |
| 12      | 1100   | C        |
| 13      | 1101   | D        |
| 14      | 1110   | E        |
| 15      | 1111   | F        |
| 16      | 1 0000 | 10       |

Berechnung der Speicherkapazität:

C (Zylinder) x H (Köpfe) x S (Sektoren) x 512 Byte = Speichervolumen
(ODER Anzahl der Blöcke x 512 Byte)

Beachte!  
1 kiByte = 1 024 Byte (realer Speicherplatz)  
1 kByte = 1 000 Byte (Markt)

## 4 Sektoren und Cluster

- Die Einteilung der Festplatte in Zylinder (Spuren), Köpfe (Seiten), Sektoren ist physisch
- Das Zusammenfassen von Sektoren zu Clustern ist
  logisch und erforderlich wegen der begrenzten Adressbits.
- Es sind Clustergrößen von einem Sektor (512 Byte) bis
  64 Sektoren (32 kByte) möglich
- Das verwendete Dateisystem/Betriebssystem bestimmt die
  Clustergröße

## 5 Berechnung Clustergröße

### Adressbit bei den Dateisystemen

- FAT12 12 bit 2<sup>12</sup> = 4.096
- FAT16 16 bit 2<sup>16</sup> = 65.536
- FAT32 32 bit 2<sup>32</sup> = 4.294.967.296
- NTFS 64 bit 2<sup>64</sup> = 18.446.744.073.709.551.616

Clustergröße<sub>min</sub> = Partitionsgröße / 2<sup>Anzahl der Adressbit</sup>  
Sektoren pro Cluster = Clustergröße / 512 Byte

## 6 Clustergrößen FAT 16

| Partitionsgröße | Sektoren/Cluster | Clustergröße |
| --------------- | ---------------- | ------------ |
| Bis 32 Mibyte   | 1                | 512 byte     |
| Bis 64 Mibyte   | 2                | 1 kibyte     |
| Bis 128 Mibyte  | 4                | 2 kibyte     |
| Bis 256 Mibyte  | 8                | 4 kibyte     |
| Bis 512 Mibyte  | 16               | 8 kibyte     |
| Bis 1024 Mibyte | 32               | 16 kibyte    |
| Bis 2048 Mibyte | 64               | 32 kibyte    |
| Bis 4096 Mibyte | 128              | 64 kibyte    |

## 7 Clustergrößen FAT 32

| Partitionsgröße        | Sektoren/Cluster | Clustergröße |
| ---------------------- | ---------------- | ------------ |
| 512 Mbyte bis 1 Gibyte | 1                | 512 byte     |
| Bis 2 Gibyte           | 2                | 1 kibyte     |
| Bis 4 Gibyte           | 4                | 2 kibyte     |
| Bis 8 Gibyte           | 8                | 4 kibyte     |
| Bis 16 Gibyte          | 16               | 8 kibyte     |
| Bis 32 Gibyte          | 32               | 16 kibyte    |
| &gt; 32 Gibyte         | 64               | 32 kibyte    |

## 8 Clustergrößen NTFS

| Partitionsgröße  | Sektoren/Cluster | Clustergröße |
| ---------------- | ---------------- | ------------ |
| 512 Mibyte bis 1 | 1                | 512 byte     |
| Bis 1 Gibyte     | 2                | 1 kibyte     |
| Bis 2 Gibyte     | 4                | 2 kibyte     |
| Bis 4 Gibyte     | 8                | 4 kibyte     |
| Bis 8 Gibyte     | 16               | 8 kibyte     |
| Bis 16 Gibyte    | 32               | 16 kibyte    |
| Bis 32 Gibyte    | 64               | 32 kibyte    |
| &gt; 32 Gibyte   | 128              | 64 kibyte    |

## 9 Betriebssysteme und Dateisysteme

| Betriebssystem         | Unterstützte Dateisysteme                                   |
| ---------------------- | ----------------------------------------------------------- |
| DOS                    | FAT16                                                       |
| Windows 3.x            | FAT16                                                       |
| Windows95              | VFAT (16bit und lange Dateinamen)                           |
| Windows95B             | VFAT und FAT32                                              |
| Windows98              | VFAT, FAT32                                                 |
| Windows NT             | FAT16, VFAT, NTFSv4                                         |
| Windows 2000           | FAT16, VFAT, NTFSv5                                         |
| WindowsXP, Windows2003 | FAT16, VFAT, NTFSv5                                         |
| OS/2                   | FAT16, HPFS[^6]                                             |
| Linux                  | FAT16, FAT32, NTFS, extfs2, extfs3, reiserFS[^7] und andere |

[^6]: HPFS High Performance File System
[^7]: reiserFS

## 10 Optimale Clustergröße?

### Cluster ist die kleinste logische Speichereinheit

### Dateien, die kleiner als ein Cluster sind benötigen immer einen ganzen Cluster, dabei kann Speicherplatz ungenutzt bleiben

### Große Dateien haben nur im letzten Cluster etwas Verlust

- Viele Große Dateien – große Cluster
- Viele kleine Dateien – besser kleine Cluster

## 11 Ablauf nach dem Einschalten

### BIOS wird angesprochen

### POST und danach BIOS in RAM unter <f>FFFE0h</f> laden

### IRQ 13h (Software-Interupt) löst Bootvorgang aus:

- Suche A: auf Seite 0, Spur 0, Sektor 1 einen MBR[^2] und lade diesen auf RAM 07C00h (nur DOS)
- Oder (je nach BIOS-Einstellung Bootgerätefolge)
  Suche C: auf Kopf 0, Spur 0, Sektor 1 einen MBR[^2] und lade diesen auf RAM 07C00h (nur DOS)

### Führe MBR[^2]-Code aus. Es wird die Partitionstabelle gelesen.

### Erkenne aktive primäre Partition und suche dort im Sektor 1 nach Bootsektor der Partition

### Führe Bootsektorcode aus, lese FAT/MFT und lade Startdateien

Bereiche der Festplatte

12



Masterboot-Routine

13

MBR[^2] – Master Boot Record

➟ MBR[^2] enthält
➟ Ausführbaren Code (liest PT)
(ab 000h bis 1BDh: 446 Byte gesamt)
➟ Partitionstabelle 64 Byte (ab 1BEh bis 1FDh –
4x16Byte, 1FEh=55, 1FFh=AA)
➟ Partitionstabelle immer 64 Byte lang (x86)

14

je 16 Byte pro Partition, also max. 4 Partitionen möglich
➟ Davon max. 4 primäre Partitionen (haben Bootsektor)
oder
3 primäre Partitionen und max. 1 erweiterte Partition
➟ (kann viele logische Laufwerke enthalten – freie Buchstaben,
normalerweise nicht bootfähig)
➟ Es darf nur eine primäre Partition aktiv sein
➟ MBR[^2] reparieren mit fdisk des jeweiligen Betriebssystems
(nur noch Win 7, Win 10 )



MBR[^2] (Sektor 1: 00h bis 1FEh)

15



Partitionstabelleninhalt je Partition (CHS)

16



Partitionstabelle

17

18



MBR[^2] - GPT

20



Aufbau MBR[^2]

21

Jedes LLW[^1] hat eine Partitionstabelle
mit 2 Einträgen:
 das eigentliche LLW[^1]
 nächste PT für nächstes LLW[^1]

MBR[^2]: Masterbootrecord mit
Partitionstabelle der Festplatte
pP#: primäre Partition
eP: erweiterte Partition
PT: Partitionstabelle je LLW[^1], Bootsektor
LLW[^1]: Logisches Laufwerk



Dateisysteme –
Die Verwaltung der Partition zur Datenspeicherung

22

23

GPT – GUID (Globally Unique Identifier) Partition Table
➟ Ein Standard zur Formatierung von Partitionstabellen
➟ Bestandteil von UEFI
➟ GPT-Partitionen lassen sich (mit Einschränkungen) auch unabhängig

von UEFI nutzen
➟ OS und Datenträger müssen GPT unterstützen
➟ Wird MBR[^2] ablösen

24



Gegenüberstellung MBR[^2] - GPT

➟

25

https://upload.wikimedia.org/wikipedia/commons/4/45/GNU_GRUB_components.svg

GPT - Vorteile

➟ Adressierung mit 64 bit – maximale Größe einer Partition

26

liegt bei 18 ExaByte (18 x 1018 Byte)
➟ Kein Limit für die Anzahl primärer Partitionen (128)
➟ Absicherung durch CRC32-Prüfsummen
➟ Eindeutige Identifikation von Partitionen und Datenträgern
➟ Backup-Header
➟ Abwärtskompatibilität
➟ Erhöhter Schutz gegen Datenverlust bei HW-Defekten

➟ Einsatz bei portablen Speichermedien

GPT - Schema

➟ Protective Master Boot Record: An erster Stelle steht der

27

bereits erwähnte Protective-MBR[^2], der für die
Abwärtskompatibilität des Partitionierungsstils sorgt.
➟ Primäre GUID-Partitionstabelle: GPT-Header und
Partitionseinträge
➟ Partitionen: Auf den Header und die Partitionseinträge
folgen die jeweiligen Einheiten des aufgeteilten
Speicherplatzes, also die verschiedenen Partitionen.
➟ SekundäreGUID-Partitionstabelle: Backup von GPTHeader und Partitionseinträgen in gespiegelter
Reihenfolge



GPT – Schema 2

➟ LBA-Blöcke (Logical Block Addressing) => Sektor des Datenträgers 512 Byte
28

GPT – Header – LBA 1 (zweiter Sektor)
➟ Folgt auf protective MBR[^2] – Backup im letzten Sektor (LBA -1) – durch Prüfsumme

geschützt - Position im Header gespeichert (92 Byte – Rest wird mit 0 aufgefüllt)

29

GPT - Partitionseintrag
➟ Partitionseinträge folgen dem Header – 128 Byte pro Eintrag (4

Einträge pro log Block (512 Byte)), GUID-Partition-Table-Standard
Blöcke 2 bis 33 – 128 Partitionen
➟ Bei Bedarf lässt sich die Zahl an freigegebenen Sektoren beliebig
erhöhen

30



Dateisysteme

31

➟ Zugriff über Pfadnamen
➟ Namen aller Verzeichnisse auf dem Pfad von der Wurzel bis zur
Datei, durch spezielles Trennzeichen separiert
➟ Unix/Linux: /home/ernie/oscar.jpg
➟ Windows: C:\home\ernie\oscar.jpg
➟ typische Operationen auf Verzeichnissen:
➟ Erzeugen (mkdir)
➟ Löschen (rmdir), i.a. nur von leeren Verzeichnissen möglich
➟ Öffnen (opendir) und Schließen (closedir)
➟ Lesen eines Verzeichniseintrags (readdir)
➟ Schreiben eines neuen Verzeichniseintrags erfolgt implizit beim
Erzeugen einer neuen Datei
➟ Löschen eines Verzeichniseintrags erfolgt i.a. implizit beim Löschen
einer Datei bzw. eines Unterverzeichnisses



Stammverzeichnis FAT16

32

8

3

1

10

2

2

2

4

Name

Extension

Attribut

Ungenutzt

Zeit

Datum

Cluster

Dateigröße

➟ Im Stammverzeichnis

➟ Attribute Flags

max. 512 Einträge
➟ Jeder Eintrag 32 Byte lang
➟ Stammverzeichnis = 16 kByte
➟ Dateinamen 8.3 Zeichen
➟ At. = Attribute-Flags: Lesen (r),
Archiv (a), Hidden(h), System
(s)

➟ Bit 6/7: res.;
➟ bit 5: Archive Flag (a);
➟ bit 4: Directory Flag;
➟ bit 3: Volume Label Flag;
➟ bit 2: System Flag (s);
➟ bit 1: Hidden Flag (h);
➟ bit 0: Read Only Flag (r)



Verzeichnisaufbau FAT16
➟ Verkettung der Cluster wird in der FAT festgehalten:
➟ Enthält Eintrag für jedes Cluster auf der Festplatte
➟ Für jedes Cluster einer Datei ist die Nummer des nachfolgenden
Clusters als 32-bit Zahl eingetragen
➟ Die Nummer des Startblockes kann dem Verzeichnis entnommen
werden
➟ Dateiende wird durch den Eintrag -1 (EOF) markiert
➟ Freie Cluster werden durch Eintrag 0 markiert
Auszug aus einer FAT
0

1

2

3

4

5

6

7

8

9

10

11

12

13

14

15

16

17

18

19

20

21

…

-

-

0

8

5

6

20

0

9

15

11

17

0

0

0

16

18

4

-1

0

-1

0

…

Plattenblöcke (Cluster) für Datei A
10

17

4

5

6

15

16

18

Plattenblöcke (Cluster) für Datei B
3

33

11

8

9

20



34

8 Byte

3 Byte

1 Byte

10

2

2

2

4

Name

Ext.

Attribute

ungenutzt

Zeit

Datum

Cluster

Dateigröße

Verzeichnisaufbau FAT32 - V(olume) FAT

➟ Ermöglicht lange Dateinamen
➟ Durch Nutzung der freien Bit aus dem Attribute-Byte (Bit 6 und

1. und
   ➟ Für lange Dateinamen bis 255 Byte/Datei werden mehrere
   Dateieinträge umgesetzt
   ➟ Teilweise kompatibel zu FAT16

35

1
2
2
2
2

F
S
T
d1
d2
Cluster
obere 16 bit

Erstellungsdatum

Datum letzter
Zugriff

Sekundendauer beim
Schreiben

1

Erstellungszeit

Formatkennzeichnung

3 Byte
1 Byte
10 Byte
2 Byte
2 Byte
2 Byte

Ext.

Attribute

Extra genutzt
von FAT32
Zeit

Datum

Cluster

Dateigröße

8 Byte

Name

Verzeichnisaufbau FAT32 - ab Windows 98
4 Byte

Aufbau FAT32-Verzeichnis

➟ Dateisystem für Windows 98
➟ einige Unterschiede zum Linux-Dateisystem EXT2:
➟ keine Benutzeridentifikation für Dateien und Verzeichnisse!
➟ Partitionen werden durch Laufwerke repräsentiert, die durch

36

Buchstaben dargestellt werden, z. B.: A: (Floppy), C: (Platte), D: (DVD)
➟ jedem Windows-Programm ist ein aktuelles Laufwerk und ein aktuelles
Verzeichnis aus Dateibaum zugeordnet
➟ es gibt keine Inodes: die Speicherung aller Attribute einer Datei erfolgt
➟ im Verzeichnis
➟ es gibt keine Hard Links
➟ die kleinste adressierbare Einheit heißt Cluster und ist ein Block mit
➟ einer Zweierpotenz von 1 bis 128 Sektoren (bei Formatierung wählbar)
➟ die Blockadressierung erfolgt über eine Tabelle (FAT = File Allocation
Table), in der die Verkettung der Cluster aller Dateien gespeichert ist



FAT32 Dateisystem 2

37

➟ Attribute einer FAT32-Datei:
➟ Name
➟ im MS-DOS Modus: 8 Zeichen Name + 3 Zeichen Erweiterung
(z. B. „AUTOEXEC.BAT“)
➟ im Windows 98 Modus: 255 Zeichen inklusive Sonderzeichen
(z. B. „Eigene Dateien“)
➟ Dateilänge
➟ Typ: Verzeichnis, versteckte Datei (hidden), Systemdatei
(system),
➟ zu archivierende Datei (archive)
➟ nur zwei Zugriffsrechte: „nur lesbar“ und „schreib- und lesbar“
➟ Ortsinformation: Nummer des ersten Clusters einer Datei
➟ Zeitstempel:
➟ zunächst nur Datum und Uhrzeit des letzten Schreibzugriffs
➟ bei Windows 98 zusätzlich Datum und Uhrzeit der Erstellung, sowie
➟ Datum des letzten Lesezugriffs

FAT32 Dateisystem 3 - Aufbau
➟ unsortierte 32-Byte Einträge werden hintereinander in Liste

gespeichert
➟ aus langen Dateinamen (bis zu 255 Zeichen) wird ein neuer
eindeutiger Name aus 8+3 Zeichen generiert und eingetragen; der
vollständige Name wird in zusätzlichen vorangestellten 32-Byte
Feldern gespeichert

38

FAT32 Dateisystem 4
➟ die Verkettung der Cluster wird in der FAT festgehalten:
➟ enthält Eintrag für jedes Cluster auf der Festplatte
➟ für jedes Cluster einer Datei ist die Nummer des nachfolgenden

Clusters als 32-Bit Zahl eingetragen
➟ die Nummer des Startblocks kann dem Verzeichnis entnommen werden
➟ Dateiende wird durch Eintrag –1 markiert

➟ freie Cluster werden durch Eintrag 0 markiert

40

FAT32 Dateisystem 5 - Blockorganisation

➟ Bootsektor enthält neben dem Bootloader noch einige Angaben

über das Dateisystem, z, B:

41

➟ Gesamtanzahl der Sektoren (4 Byte)
➟ Bytes je Sektor (2 Byte)
➟ Sektoren je Cluster (1 Byte, nur Zweierpotenzen von 1 bis 128

erlaubt)
➟ Startposition des Hauptverzeichnisses (4 Byte)
➟ Label (10 Byte) und Serien-Nummer (4 Byte)
➟ Anzahl FATs (1 Byte) und Sektoren je FAT (4 Byte)

➟ FAT kann zur Erhöhung der Sicherheit auch mehrfach auf

Festplatte gespeichert sein

FAT32 Dateisystem 6 - Nachteile

➟ umständliche Datenstrukturen (wegen Kompatibilität zu MS-DOS)
➟ sehr große FAT bei modernen Festplatten hoher Kapazität
➟ Positionieren eines Dateizeigers bei großen Dateien sehr

42

zeitaufwendig
➟ für jeden Dateizugriff muss mindestens ein Plattenblock mit einem Teil
der FAT von der Festplatte geladen werden
➟ FAT enthält Verkettungen für alle Dateien => es werden stets auch
viele nicht benötigte Verkettungsinformationen geladen
➟ langsame Suche nach freien Clustern
➟ sehr viele Kopfbewegungen, wenn Cluster einer Datei verstreut sind
➟ (=> regelmäßiger Aufruf eines Defragmentierungsprogramms sinnvoll;
es versucht die Cluster jeder Datei zusammenhängend anzuordnen)
➟ FAT32 wird nicht mehr weiterentwickelt!



NTFS Dateisystem

43

➟ Dateisystem für Windows NT
➟ einige Unterschiede zum FAT32 Dateisystem:
➟ Unterstützung mehrerer Benutzer und Gruppen mit umfangreichen
➟ Zugriffsrechten
➟ jede Partition wird als Volume bezeichnet und besteht aus einer
linearen Sequenz von Clustern (mit z. Zt. 512, 1024, 2048 oder
4096 Byte)
➟ Adressierung eines Clusters erfolgt über 64-Bit Cluster-Nummern
(=> sehr große Dateien möglich)
➟ zentrales Element der Dateiorganisation ist die Master File Table
(MFT), die für jede Datei einen Eintrag enthält
➟ Unterstützung von Hard Links
➟ Dateien können automatisch komprimiert abgespeichert werden
➟ Konsistenzüberprüfung nötig



NTFS Dateisystem - 2

44

➟ Zugriffsrechte einer NTFS-Datei:
➟ no access : kein Zugriff (---)
➟ list : Anzeige von Verzeichnisinhalt erlaubt (r-- )
➟ read : Lesen und Ausführen von Dateien erlaubt (rw-)
➟ add : Hinzufügen von Einträgen in einem Verzeichnis erlaubt (-wx)
➟ change : Ändern und Löschen von Dateien erlaubt (rwx)
➟ full : zusätzlich Ändern von Eigentümer und Zugriffsrechten erlaubt

➟ jede Datei wird eindeutig durch eine 64-Bit Dateireferenz

(File reference) bezeichnet; sie besteht aus:
➟ 48-Bit Dateinummer (File ID), die einen eindeutigen Index in der

MFT darstellt
➟ 16-Bit Folgenummer (Sequence ID), die bei jeder
Wiederverwendung der Dateinummer hochgezählt wird



NTFS Dateisystem - 3

45

➟ jede Datei besteht aus mehreren Strömen, z.B.:
➟ Standard-Information (zu MS-DOS kompatibler Dateiname sowie
klassische MS-DOS Attribute wie Dateilänge, Zeitstempel, Typ, ...)
➟ Dateiname (in Unicode mit 16-Bit Zeichen)
➟ Dateireferenz (64-Bit Wert)
➟ Sicherheits-Beschreibung (enthält Eigentümer und Zugriffsrechte)
➟ eigentliche Daten
➟ Dateiorganisation erfolgt mittels Master File Table (MFT):
➟ enthält für jede Datei genau einen Eintrag
➟ Größe jedes Eintrags entspricht der Cluster-Größe
➟ Index in Tabelle wird durch die Datei-Nummer festgelegt
➟ Eintrag in Bootsektor verweist auf Beginn der MFT
➟ ein Eintrag besteht aus Hintereinanderreihung mehrerer Ströme, die
jeweils durch einen kurzen Vorspann (mit Länge, ...) eingeleitet
werden

NTFS Dateisystem - 4
➟ Eintrag in MFT für eine kurze Datei:

➟ Eintrag in MFT für eine lange Datei (Beispiel):

46

➟ Daten befinden sich in Serien aus zusammengehörigen Clustern

(Extents)
➟ Zuordnung von virtuellen Cluster-Nummern (VCN) zu logischen
Cluster-Nummern (LCN) wird als weiterer Strom gespeichert

NTFS Dateisystem - 5

➟ Eintrag in MFT für ein kurzes Verzeichnis (Beispiel):

47

➟ Inhalt eines Verzeichnisses wird als eigener Strom gespeichert
➟ jeder Verzeichniseintrag enthält Dateireferenz, Dateiname und einige

ausgewählte Attribute (z.B. Dateilänge, Datum der letzten Modifikation)
➟ Sortierung in lexikographischer Reihenfolge
➟ Eintrag in MFT für ein langes Verzeichnis:
➟ Verzeichniseinträge werden nicht in MFT, sondern in separaten Extents

gespeichert
➟ Organisation als B+-Baum ermöglicht eine schnelle Suche in großen
Verzeichnissen

NTFS Dateisystem - 6
➟ die ersten 16 Dateien in der MFT sind Metadateien, die für das System

reserviert sind:

Index
0

MFT

1

Kopie der MFT

2

Journal-Datei (protokolliert die Änderungen am Dateisystem)

3

Volume-Informationen (z.B. Name, Größe des Volumes)

4

Attribut-Tabelle (definiert erlaubte Ströme in den Einträgen)

5

Wurzelverzeichnis

6

Cluster-Bitmap (kennzeichnet alle freien und belegten Cluster)

7

Bootloader

8

Bad Cluster List (enthält die Indizes aller fehlerhaften Cluster)

9 bis 15 ... (reserviert für weitere Systemdateien)
16

48

Bedeutung

erste Benutzerdatei

Vorzüge NTFS
➟ Sicherheitskonzept nach C2
➟ Benutzer und Gruppen mit umfangreichen Zugriffsrechten
(no access, list, read, add, change, full)

➟ Clusteradressierung über 64-bit

➟ Automatische Komprimierung möglich

49

➟ Journalprüfung
➟ Tool zum Lesen/Schreiben von NTFS ohne NTFS:

ntfsdos.exe (win7)



Vergleich der Dateisysteme

50

FAT

HPFS[^6]

NTFS

Dateiname

8+3 Zeichen
(durch Punkt
getrennt)

254 Bytes
Mehrere Punkte zulässig

255 Unicode-Zeichen,
Punkte zulässig

Dateigröße

232 Byte

232 Byte

264 Byte

Partition

232 Byte

241 Byte

264 Byte

Max. Länge des
Suchweges (Pfadlänge)

64

Unbegrenzt

Unbegrenzt

Attribute

Einige Bitflags

Bitflags u. bis zu 64 k an
erweiterten Attributen

Alles, einschl. der
Daten wird als
Dateiattribut
behandelt

Verzeichnisse

Unsortiert

B-Baum

B-Baum

Konzept

Einfach

Schnell

schnell, mit
Datenwiederherst./
Sicherheit

Eingebaute
Sicherheit

Nein

Nein

Ja

Betriebssystem - Dateisystem

FAT16
VFAT

FAT32

51

NTFS4
NTFS5

DOS

W95a

W95b/98/
ME

WinNT4

W2k

Wxp>

X

X
X

X
X
X

X
X
X
X

X
X
X
X
X

X
X
X
X
X



Weitere Dateisysteme

52

➟ ext2
➟ Linux Standard
➟ ext3
➟ Linux Standard mit Journaling
➟ Ext4
➟ Weiterentwicklung v. ext3 - mit erweiterten Grenzen
➟ riserfs
➟ Linux, Unix mit verbesserter Wiederherstellung
➟ HPFS[^6] (NTFS)
➟ OS/2 von IBM
➟ btrFS
➟ Linux/Unix, neu, sehr stabil und sicher
➟ ZFS
➟ Linux/Unix, SICHERHEIT

➟ https://www.ionos.de/digitalguide/server/knowhow/dateisysteme/
➟ https://de.wikipedia.org/wiki/Liste_von_Dateisystemen

Fragmentierung und Defragmentierung

➟ Bei neuen/leeren Partitionen werden die Dateien

53

hintereinander geschrieben
➟ Dateien werden gelöscht und Cluster werden frei gegeben
➟ Neue Dateien werden in die frei gewordenen Cluster
geschrieben und dabei zerlegt (fragmentiert)
➟ Um Dateien wieder zusammenhängend zu erhalten muss
man defragmentieren (Tool defrag.exe)

Hinweise zum Defragmentieren

➟ Auf der Partition muss ausreichend Platz für das

54

Zwischenspeichern verschobener Cluster sein
➟ Bei zu wenig Platz dauert der Prozess sehr lange
➟ Defragmentieren nur nötig, wenn ständig gelöscht und
wieder neu beschrieben wird
➟ Partitionen, die nicht verändert werden brauchen nicht
defragmentiert werden

Bootmanager 01 – Warum?

➟ Bootmanager ermöglichen mehrere Betriebssysteme auf

55

einer Festplatte
➟ Im Normalbetrieb benötigen Nutzer zur Erfüllung ihrer
Aufgaben (Sekretärin, Buchhalter Datenbankbenutzer etc.)
keinen Bootmanager
➟ Für "Computerpioniere", Tester, Programmierer und
andere ist ein Bootmanager eine interessante Lösung
mehrere Betriebssysteme auf einem Computer zu
benutzen (nicht gleichzeitig -> dann VM).

Bootmanager 02
➟ Linux und ab Windows 2000 haben eigenen Bootmanager
➟ Andere Bootmanager platzieren sich in MBR[^2] oder / und

Bootsektor der Bootpartition (primäre Partition oder andere
Partition)
➟ Windows ab W2k benötigt immer eine aktive primäre
Partition für den Bootmanager (ntloader und boot.ini)

56

Bootmanager 03 - Auswahl
➟ NT-Bootmanager (WNT / W2k / W2003 / WXP)
➟ LINUX (GRUB, GRUB2)
➟ PTS Boot Manager ME2 (www.bhv.net)
➟ Bootmagic (Partition Magic www.powerquest.de)

➟ Xosl (Freeware) www.xosl.org

57

➟ Beachte: W9x überschreibt MBR[^2] und kann vorhandenen

Bootmanager in den Partitionen überschreiben
➟ Reparatur: Supergrub, Rescatux, easyBCD, easyUEFI ->
Internet



Abkürzungen

58

Abkürzung

Bedeutung

BS / OS

Betriebssystem

HW

Hardware

SW

Software

API

Applications Programmers Interface

BIOS

Basic Input Output System

UEFI

Unified Extensible Firmware
Interface

MMU

Memory Management Unit

SMP

symmetrisches
Multiprozessorsystem

IPC

Interprozesskommunikation

Quellenhinweise

➟
➟
➟
➟
➟
➟
➟
➟
➟

60

➟
➟
➟
➟
➟
➟
➟
➟
➟
➟
➟
➟
➟
➟
➟
➟
➟
➟
➟
➟

https://qastack.com.de/superuser/299391/what-are-the-differences-between-firmware-and-softwareos
https://de.wikipedia.org/wiki/Software
https://www.thomas-krenn.com/de/wiki/UEFI_Einf%C3%BChrung
https://www.slideshare.net/k33a/uefi
https://slideplayer.com/slide/4703738/
http://www.softselect.de/business-software-glossar/software
https://www.operating-system.org/betriebssystem/_german/w-wissen.htm
https://www.microsoft.com/en-us/windows/windows-10-specifications
https://www.google.com/search?q=Definition+Software&client=firefox-bd&tbm=isch&source=iu&ictx=1&fir=gwjlIvPySGzctM%252CZg1VVNb0NWjRxM%252C%252Fm%252F01mf0&vet=1&usg=AI4_-kQP4-vggJjVkgDisLJ3MJDeTMHwA&sa=X&ved=2ahUKEwiu0sqV6vrwAhUzDGMBHbM4BKYQ_B16BAgrEAE#imgrc=gwjlIvPySGzctM
http://www.softselect.de/business-software-glossar/software
https://qastack.com.de/superuser/299391/what-are-the-differences-between-firmware-and-softwareos
https://de.wikipedia.org/wiki/Software
https://docs.microsoft.com/en-us/windows-hardware/drivers/bringup/boot-and-uefi
https://slideplayer.com/slide/4703738/
https://www.thomas-krenn.com/de/wiki/UEFI_Einf%C3%BChrung
https://de.wikipedia.org/wiki/Firmware
https://slideplayer.com/slide/4703738/
https://www.heise.de/tipps-tricks/Was-ist-ein-Betriebssystem-4938579.html
https://www.studydrive.net/en/flashcards/betriebssysteme-prozesse/11583
https://www.sachsen.schule/~dvt/lpe13/bmv_pv.htm
https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwiUk8nGvYfxAhXsIMUKHSDRC0QQFjATegQIGhAD&url=http%3A%2F%
2Fais.informatik.uni-freiburg.de%2Fteaching%2Fws16%2Fsystems1%2Fslides%2Fkap04-prozesse.pdf&usg=AOvVaw17F7Lybvl7_cHP5XTeaPwY
https://www.informatik.uni-leipzig.de/~meiler/Schuelerseiten.dir/MSchmidt/allgemein.html
https://about.google/intl/ALL_de/stories/betriebssysteme/
http://www.netzmafia.de/skripten/bs/bs1.html
https://www.tu-chemnitz.de/informatik/friz/Grundl-Inf/Betriebssysteme/Script/index.html
https://www.sachsen.schule/~gdb/daten_verarbeiten/BS/Betriebssysteme..html
https://www.sachsen.schule/~dvt/lpe13/bmv_pv.htm
https://www.sachsen.schule/~dvt/lpe13/134.htm
https://www.sachsen.schule/~dvt/lpe13/131w.htm


