<link rel="stylesheet" type="text/css" href="styles.css">

# 4 Semester

## ## 29 01 2024

### ### IoT

- esp32
- DHT Digital Humidity and Temperature.

![Alt text](img/img4/esp.jpg)
with the ESP32. The ESP32 is a popular low-cost, low-power system-on-a-chip (SoC) microcontroller with integrated Wi-Fi and Bluetooth capabilities. It is developed by Espressif Systems, a company based in Shanghai, China. The ESP32 is widely used in various IoT (Internet of Things) applications, embedded systems, and projects where wireless communication is essential.

**Espressif Systems Processor**!

![Alt text](img/img4/dht.jpg)
![Alt text](img/img4/DHT22_Pinout.JPG)
![Alt text](img/img4/ESP32_WROOM_Pinout.JPG)

        // Bibliothek für Temperatur- und Luftfeuchtigkeitssensor KY-015

        #include "DHT.h"

        // Input PINs
        #define DHTPIN 22

        // DHT22 will be initialized here
        #define DHTTYPE DHT22 // DHT22
        DHT dht(DHTPIN, DHTTYPE);

        void setup() {

        // DHT22 Mearsurement will be started
        dht.begin();

        }

        void loop() {

        Serial.begin(115200);

        Serial.println("---------Temperatur und Luftfeuchtigkeit (DHT22) ----------");

        // Measurement of humidity
        float h = dht.readHumidity();
        // Measurement of temperature
        float t1 = dht.readTemperature();

        // The measurements will be tested of errors here
        // If an error is detected, an error message will be displayed
        if (isnan(h) || isnan(t1)) {
        Serial.println("Error while reading the sensor");
        return;
        }
        // Output at the serial console
        Serial.print("Luftfeuchtigkeit: ");
        Serial.print(h);
        Serial.print(" %\t");
        Serial.print("Temperatur: ");
        Serial.print(t1);
        Serial.print(char(186)); //Output <°> symbol
        Serial.println("C ");
        Serial.println("-----------------------------------------------------------");
        Serial.println(" ");

        // 60 Sekunden Warten
        delay(60000);

        }

## ## 1 2 2024

### ### pog

**gamma.app** benutzen

[3cx](https://www.3cx.de/) lernen

## 5 2 2024

### iot

ultraschale sensor

![alt text](img/img4/ultraschale.jpg)

braucht 5 volt
triger und echo
![alt text](img/img4/us.png)

ssid FRTZ!Box Fon WLAN 7390  
passeord 3734033917067700  
mqtt server 192.168.13.137

range topic m1016gmjs/Fuellstand
time topic m1016gmjs/time

pussubclient installieren von ide

## ## 6 2 2024

### ### Sequenzdiagram

synchron erwartet eine Antwort
asynchron erwartet keine Antwort

## ## 8 2 2024

### ### Pog

#### #### mehr info zu Dokumentation

kopie eins zu eins von Antrag ist gut  

aus der Frau Lukas, unterlagen können wir löschen was wir nicht brauchen, zbp Risiko  

die Seite von Herrn Pog geschickt:  
https://it-berufe-podcast.de/vorbereitung-auf-die-ihk-abschlusspruefung-der-it-berufe/beispiele-fuer-ihk-abschlussprojekte-in-den-it-berufen/
  
hinzufuegen: lohnnebenkosten der arbeitsgeber  

ablauf plan ganntdiagramm ist gut bewerten oder eion n netzplan  

![alt text](img/img4/Image.png)

sollist vergleicht fuellt eine ganze seite  

Einweichung anpassung weglassen

schrift 10 12
line anstand 1 bis 1,5
