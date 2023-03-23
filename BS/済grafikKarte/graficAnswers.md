<style>
h1 { color: Red }
h2 { color: green }
h3 { color: blue; background-color: white;}
h4 { color: red;}
 h5 { color: yellow;}
</style>

# graficAnswers

## Füllen Sie die Tabelle aus (Aufbau der Grafikkarte (Blockdarstellung))

!!

## Nennen Sie mindestens 2 Unterschiede zwischen PCI und PCIe

PCI is a parallel interface whereas PCIe is a serial interface. PCI uses individual buses for each of the devices connected to it instead of a shared one like what PCIe uses.
The difference in speed between standard PCI interface and 16 slot PCIe is large. The legacy PCI has a data rate of 133MB/s but the PCIe has a data rate of 16GB/s.

## Wozu dient der Grafikspeicher?

Als Grafikspeicher (auch Videospeicher oder Video-RAM) wird Computerspeicher bezeichnet, der von der Grafikhardware (Grafikkarte oder Onboard-Grafikchip) genutzt wird. Dabei kann es sich um einen reservierten Bereich des Arbeitsspeichers (Shared Memory) handeln oder um dedizierten Grafikspeicher.

- Ablage der im Grafikprozessor (GPU) verarbeiteten Daten, sowie als Bildspeicher
- Zwischenspeicher von Daten
  -Speicherbausteine mit je 256 MB (1 – 6 GB)
- GDDR3 1.250 MHz, GDDR5 3.500 MHz
- Größe des Grafikspeichers bestimmt die maximale Farbtiefe und Bildauflösung

## Was verstehen Sie unter dediziertem und was unter shared Memory?

- bei einer Onboard-Grafikkarte wird ein reservierter Bereich des normalen Arbeitsspeichers vom Motherboard für die Grafik abgestellt (shared memory)
- Halbleiterspeicher, der nur für den Grafikprozessor - die GPU - zur Verfügung steht (dedizierter Speicher) – schnellerer Zugriff

## Wozu dient der RAMDAC?

Le RAMDAC (Random Access Memory Digital-to-Analog Converter) est un convertisseur numérique-analogique, c'est-à-dire un composant électronique chargé de convertir l'image numérique stockée dans la mémoire vidéo en signal analogique destiné au moniteur.

## Nennen Sie mindestens 3 Kühlmöglichkeiten für eine Grafikkarte!

- passive Kühlung (Strahlung, Konvektion)
- aktive Kühlung (Lüfter/Kühler/Heatpipe, Wasserkühlung, Flüssigmetall-Kühlung, Peltier)

## Nennen Sie 3 externe Signalausgänge für „Grafikinformationen“

VGA,DVI,HDMI,TV-Ausgang,Displayport

## Nennen Sie 3 wesentliche Unterscheidungsmerkmale zu den externen Grafikschnittstellen

??

## Was verstehen Sie unter Tearing?

Störende Artefakte

## Was bewirken die Synchronisationslösungen, wie G-Sync und Free-Sync?

NVIDIA G-SYNC is groundbreaking new display technology that delivers the smoothest and fastest gaming experience ever. G-SYNC's revolutionary performance is achieved by synchronizing display refresh rates to the GPU in your GeForce GTX-powered PC, eliminating screen tearing and minimizing display stutter and input lag.

Fast-Sync Das Buffering erfolgt an der Ebene des Treibers

## Wie unterscheiden sich G-Sync und Free-Sync voneinander? Nennen sie 2 Merkmale

G-SYNC hardware
Free-Sync driver
G-Sync has a better quality than FreeSync, also at low refresh rates. G-Sync doubles the number of Hertz when they reach below the minimum and avoids screen tearing this way. G-Sync prevents screen tearing and stuttering, while FreeSync only reduces it.

## Was verstehen Sie unter On-Board- und was unter On-Chip-Grafik? Welche lässt sich im BIOS/UEFI schalten?

??

## Welche elektrische Leistung kann die PCIe-Schnittstelle bereitstellen?

PCIe-Anschluss – 75 W

## Es gibt Grafikkarten von 150 W Verlustleistung und mehr. Welche Möglichkeit kennen Sie, diese mit der erforderlichen Leistung zu versorgen? Was ist dabei zu beachten?

??

## Wie unterscheiden sich CPU und GPU?

The primary difference between a CPU and GPU is that a CPU handles all the main functions of a computer, whereas the GPU is a specialized component that excels at running many smaller tasks at once. The CPU and GPU are both essential, silicon-based microprocessors in modern computers.

## Was verstehen Sie unter Shader?

In computer graphics, a shader is a computer program that calculates the appropriate levels of light, darkness, and color during the rendering of a 3D scene ...

## Nennen Sie mindestens 5 Shader und ihren Zweck

2D shaders
Pixel shaders
3D shaders
Vertex shaders
Compute shaders
Vertex Shaders and Fragment (Pixel) Shaders. Vertex Shaders transform shape positions into 3D drawing coordinates. Fragment Shaders compute the renderings of a shape's colors and other attributes.
