// Library for Wi-Fi and time
#include "WiFi.h"
#include "time.h"

// Library for MQTT
#include "PubSubClient.h"

// Define static IP address and network parameters
IPAddress localIP(10, 10, 100, 204);
IPAddress gateway(10, 10, 100, 1);
IPAddress subnet(255, 255, 255, 0);
IPAddress primaryDNS(10, 10, 100, 1);

// Wi-Fi parameters
const char* ssid = "ZentraleW";
const char* password = "";

// MQTT server and topics
const char* mqtt_server = "10.10.100.239";
#define RANGE_TOPIC    "Gulli/Fuellstand"
#define TIME_TOPIC    "Gulli/Time"

// Create an instance of PubSubClient
WiFiClient espClient;
PubSubClient client(espClient);

// Variables for obtaining NTP time
const char* ntpServer = "pool.ntp.org";
const long  gmtOffset_sec = 3600;
const int   daylightOffset_sec = 3600;

// Variables for Ultrasonic sensor
#define Trigger_AusgangsPin 23 // Trigger pin connected to Ultrasonic Sensor's TRIG pin
#define Echo_EingangsPin 22 // Echo pin connected to Ultrasonic Sensor's ECHO pin
int maximumRange = 600; // Maximum measurable range in centimeters
int minimumRange = 2; // Minimum measurable range in centimeters
long Abstand; // Distance measured by the sensor
long Dauer; // Duration of the echo signal

// Function to connect to Wi-Fi network
void connectToNetwork() {
  Serial.begin(9600);

  // Configure static IP address
  if (!WiFi.config(localIP, gateway, subnet, primaryDNS)) {
    Serial.println("STA Failed to configure");
  }

  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED) {
    delay(2500);
    Serial.println("Establishing connection to WiFi..");
    Serial.print("SSID: ");
    Serial.println(ssid);
    Serial.print("Password: ");
    Serial.println(password);
    delay(5000);
  }

  Serial.println("Connected to network");
}

// Function to connect to MQTT broker
void mqttconnect() {
  while (!client.connected()) {
    Serial.print("MQTT connecting ...");
    String clientId = "Gulli";
    if (client.connect(clientId.c_str())) {
      Serial.println("connected");
    } else {
      Serial.print("failed, status code =");
      Serial.print(client.state());
      Serial.println("try again in 5 seconds");
      delay(5000);
    }
  }
}

void setup() {
  // Configure static IP address
  if (!WiFi.config(localIP, gateway, subnet)) {
    Serial.println("STA Failed to configure");
  }

  connectToNetwork();
  WiFi.setSleep(false);

  Serial.println(WiFi.localIP());
  Serial.println(WiFi.macAddress());

  client.setServer(mqtt_server, 1883); // Configure MQTT server

  // Initialize and obtain current time
  configTime(gmtOffset_sec, daylightOffset_sec, ntpServer);

  pinMode(Trigger_AusgangsPin, OUTPUT);
  pinMode(Echo_EingangsPin, INPUT);
  Serial.begin (9600);
}

void loop() {
  // Reconnect to Wi-Fi network if disconnected
  if (WiFi.status() != WL_CONNECTED) {
    connectToNetwork();
  }
  // Reconnect to MQTT broker if disconnected
  if (!client.connected()) {
    mqttconnect();
  }

  // Obtain current local time
  struct tm timeinfo;
  if (!getLocalTime(&timeinfo)) {
    Serial.println("Failed to obtain time");
    return;
  }

  char timeStringBuff[50];
  strftime(timeStringBuff, sizeof(timeStringBuff), "%d.%m.%y, %H:%M:%S", &timeinfo);

  // Start ultrasonic sensor measurement by sending a 10us trigger signal
  digitalWrite(Trigger_AusgangsPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(Trigger_AusgangsPin, LOW);

  // Wait for echo signal to be activated and measure its duration
  Dauer = pulseIn(Echo_EingangsPin, HIGH);

  // Calculate distance based on measured duration
  Abstand = Dauer / 58.2;

  // Check if measured distance is within allowable range
  if (Abstand >= maximumRange || Abstand <= minimumRange) {
    Serial.println("Distance out of range");
    Serial.println("-----------------------------------");
  } else {
    // Print measured distance and duration to serial output
    Serial.print("Distance: ");
    Serial.print(Abstand);
    Serial.println("cm");
    Serial.print("Duration: ");
    Serial.print(Dauer);
    Serial.println("ms");
    Serial.println("-----------------------------------");

    // Publish measured distance and duration to MQTT topics
    client.publish(RANGE_TOPIC, String(Abstand).c_str(), true);
    delay(5000);
    client.publish(TIME_TOPIC, String(Dauer).c_str(), true);

    // Pause between measurements
    delay(5000);
  }
}
