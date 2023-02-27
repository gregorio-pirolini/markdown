<style>
h1{color:red}
h2{color:green}
h3{color:blue}
h4{color:yellow}
h5{color:purple}
h6{color:pu}
</style>

# 2 Semester

## 30-01-2023

### PT

CD $PSScriptRoot
. .\helperscript.ps1

### bs win

#### ncpa.cpl

##### SMB (Server Message Block)

ist ein Protokoll, das in lokalen Netzwerken für die Übertragung von Daten zwischen einem Client und einem Server verantwortlich ist. Es wird verwendet, um in Windows-Netzwerken Datei- und Verzeichnis-Freigaben und Druckdienste zu realisieren.

##### Samba Linux

Ein Linux-Samba-Server regelt die Freigabe von Dateien und Diensten im Netzwerk wie ein Windows-Server – nicht zuletzt (seit Samba-Version 4) auch dank der Fähigkeit, die Rolle des Active Directory Domain Controllers zu übernehmen.

cifs fruerher version von SMB

### wiso

#### Willenserklärungen

![Drag Racing](img/Willenserklärungen_01.png)

#### Vertragsarten0001

![Drag Racing](img/Vertragsarten0001_01.png)

![Drag Racing](img/Vertragsarten0001_02.png)

#### Vertragsfreiheit und AGB

![Drag Racing](img/Vertragsfreiheit_und_AGB_01.png)

![Drag Racing](img/Vertragsfreiheit_und_AGB_02.png)

#### Nichtigkeit Anfechtbarkeit

![Drag Racing](img/Nichtigkeit_Anfechtbarkeit_01.png)

![Drag Racing](img/Nichtigkeit_Anfechtbarkeit_02.png)

## 20.02.2023

### wiso

#### Form_der_Rechtsgeschäfte

![Drag Racing](img/Form_der_Rechtsgeschäfte_01.png)
![Drag Racing](img/Form_der_Rechtsgeschäfte_02.png)
![Drag Racing](img/Form_der_Rechtsgeschäfte_03.png)
![Drag Racing](img/Form_der_Rechtsgeschäfte_04.png)
![Drag Racing](img/Form_der_Rechtsgeschäfte_05.png)
![Drag Racing](img/Form_der_Rechtsgeschäfte_06.png)

### Powershell

#### Powershell Parameters

fehlt...

## 22.02.2023

### wiso

#### Überblick Dienstleistungsverhältnisse_04

![Drag Racing](img/Überblick_Dienstleistungsverhältnisse_01.png)
![Drag Racing](img/Überblick_Dienstleistungsverhältnisse_02.png)
![Drag Racing](img/Überblick_Dienstleistungsverhältnisse_03.png)
![Drag Racing](img/Überblick_Dienstleistungsverhältnisse_04.png)
![Drag Racing](img/Überblick_Dienstleistungsverhältnisse_05.png)

## 24.02.2023

### NT

#### ipv6

2001:1234:5678:90ab:cdef:1y2b:3c4d:5e6f

1 nibble = 4 bit
1 Block = 4 nibbles = 16 bit

8 Blöcke = 32 nibbles = 128 bit

2001:0000:0000:000a:0000:0000:0000:0800
2001:0:0:a:0:0:0:800

##### version 1

2001::a:0:0:0:800

##### version 2

2001:0:0:a::800

#### ipv6 Subnetting

2001:A:1B:3c5::/64 in 2 subnetze

##### expendieren

2001:000a:001b:03c5:0000:0000:0000:0000/64  
 fix &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :0000:0000:0000:0000/64

16 number / 2 = 8
aber wir fangen mizt 0 an dann 7!!

###### 1.

2001:000a:001b:03c5:0000:0000:0000:0000 /65
2001:000a:001b:03c5:7fff:ffff:ffff:ffff /65

###### 2.

2001:000a:001b:03c5:8000:0000:0000:0000 /65
2001:000a:001b:03c5:ffff:ffff:ffff:ffff /65

##### Übung

2001:A:1B:3c5::/56  
alles schreiben  
2001:000a:001B:03|c5:0000:0000:0000:0000  
(16) (32) (48) (64) ....
