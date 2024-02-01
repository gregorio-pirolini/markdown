<link rel="stylesheet" type="text/css" href="styles.css">

# 4 Semester

## 29 01 2024

#### IoT

- esp32
- DHT Digital Humidity and Temperature.

![Alt text](img/img4/esp.jpg)
with the ESP32. The ESP32 is a popular low-cost, low-power system-on-a-chip (SoC) microcontroller with integrated Wi-Fi and Bluetooth capabilities. It is developed by Espressif Systems, a company based in Shanghai, China. The ESP32 is widely used in various IoT (Internet of Things) applications, embedded systems, and projects where wireless communication is essential.

**Espressif Systems Processor**!

![Alt text](img/img4/dht.jpg)
![Alt text](img/img4/DHT22_Pinout.JPG)
![Alt text](img/img4/ESP32_WROOM_Pinout.JPG)

        // Bibliothek für WLAN und Zeit
        #include "WiFi.h"
        #include "time.h"

        // Bibliothek für MQTT
        #include "PubSubClient.h"

        IPAddress localIP(10, 10, 100, 204);
        IPAddress gateway(10, 10, 100, 1);
        IPAddress subnet(255, 255, 255, 0);
        IPAddress primaryDNS(10, 10, 100, 1);

        //WLAN-Parameter
        const char* ssid = "ZentraleW";
        const char* password = "";

        //MQTT-Server and Topics
        const char* mqtt_server = "10.10.100.239";
        #define RANGE_TOPIC    "Gulli/Fuellstand"
        #define TIME_TOPIC    "Gulli/Time"

        /* create an instance of PubSubClient client */
          WiFiClient espClient;
          PubSubClient client(espClient);

        // Variablen für das Abholen der NTP-Zeit

        const char* ntpServer = "pool.ntp.org";
        const long  gmtOffset_sec = 3600;
        const int   daylightOffset_sec = 3600;

        // Benoetigte Variablen Ultraschallsensor werden definiert

        #define Trigger_AusgangsPin 23 // ESP32 pin GIOP23 connected to Ultrasonic Sensor's TRIG pin
        #define Echo_EingangsPin 22 // ESP32 pin GIOP22 connected to Ultrasonic Sensor's ECHO pin

        int maximumRange = 600;
        int minimumRange = 2;
        long Abstand;
        long Dauer;

        void connectToNetwork() {

          Serial.begin(9600);

          // Configures static IP address
          if (!WiFi.config(localIP, gateway, subnet, primaryDNS)) {
            Serial.println("STA Failed to configure");
          }

          WiFi.begin(ssid, password);

          while (WiFi.status() != WL_CONNECTED) {
            delay(2500);
            Serial.println("Establishing connection to WiFi..");
            Serial.print("SSID: ");
            Serial.println(ssid);
            Serial.print("Paßwort: ");
            Serial.println(password);
            delay(5000);
          }

          Serial.println("Connected to network");

        }

        void mqttconnect() {
          /* Loop until reconnected */
          while (!client.connected()) {
            Serial.print("MQTT connecting ...");
            /* client ID */
            String clientId = "Gulli";
            /* connect now */
            if (client.connect(clientId.c_str())) {
              Serial.println("connected");
            } else {
              Serial.print("failed, status code =");
              Serial.print(client.state());
              Serial.println("try again in 5 seconds");
              /* Wait 5 seconds before retrying */
              delay(5000);
            }
          }
        }

        void setup() {

          // Configures static IP address
          if (!WiFi.config(localIP, gateway, subnet)) {
            Serial.println("STA Failed to configure");
          }

          connectToNetwork();
          WiFi.setSleep(false);

          Serial.println(WiFi.localIP());
          Serial.println(WiFi.macAddress());

          //  WiFi.disconnect(true);
          //  Serial.println(WiFi.localIP());

          /* configure the MQTT server with IPaddress and port */
          client.setServer(mqtt_server, 1883);

            //init and get the time
          configTime(gmtOffset_sec, daylightOffset_sec, ntpServer);

          pinMode(Trigger_AusgangsPin, OUTPUT);
          pinMode(Echo_EingangsPin, INPUT);
          Serial.begin (9600);

        }

        void loop() {

        /* if client was disconnected then try to reconnect again */

          if (WiFi.status() != WL_CONNECTED) {
            connectToNetwork();
          }
          if (!client.connected()) {
            mqttconnect();
          }

          // holen der aktuellen Uhrzeit
          struct tm timeinfo;
          if(!getLocalTime(&timeinfo)){
            Serial.println("Failed to obtain time");
            return;
          }

          char timeStringBuff[50]; //50 chars should be enough
          strftime(timeStringBuff, sizeof(timeStringBuff), "%d.%m.%y, %H:%M:%S", &timeinfo);

        // Abstandsmessung wird mittels des 10us langen Triggersignals gestartet
        digitalWrite(Trigger_AusgangsPin, HIGH);
        delayMicroseconds(10);
        digitalWrite(Trigger_AusgangsPin, LOW);

        // Nun wird am Echo-Eingang gewartet, bis das Signal aktiviert wurde
        // und danach die Zeit gemessen, wie lang es aktiviert bleibt

        Dauer = pulseIn(Echo_EingangsPin, HIGH);

        // Nun wird der Abstand mittels der aufgenommenen Zeit berechnet

        Abstand = Dauer/58.2;

        // Überprüfung ob gemessener Wert innerhalb der zulässingen Entfernung liegt
        if (Abstand >= maximumRange || Abstand <= minimumRange)
        {
        // Falls nicht wird eine Fehlermeldung ausgegeben.
        Serial.println("Abstand außerhalb des Messbereichs");
        Serial.println("-----------------------------------");
        }
        else
        {
        // Der berechnete Abstand wird in der seriellen Ausgabe ausgegeben
        Serial.print("Der Abstand betraegt:");
        Serial.print(Abstand);
        Serial.println("cm");
        Serial.print("Die Dauer betraegt:");
        Serial.print(Dauer);
        Serial.println("ms");
        Serial.println("-----------------------------------");
        //}

         client.publish(RANGE_TOPIC, String(Abstand).c_str(), true);
    ****     delay(5000);
         client.publish(TIME_TOPIC, String(Dauer).c_str(), true);
        // Pause zwischen den einzelnen Messungen

        delay(5000);

        }

        }

fully qualified board name error

## 1 2 2024

### pog

**gamma.app** benutzen
[3cx](https://www.3cx.de/) lernen
