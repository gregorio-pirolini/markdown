// Library for Wi-Fi and time
#include "WiFi.h"
#include "PubSubClient.h"
#include "DHT.h"

// Define static IP address and network parameters
IPAddress localIP(192, 168, 13, 101);    // Use the IPv4 address assigned to your computer
IPAddress gateway(192, 168, 13, 1);      // Use the default gateway IP address
IPAddress subnet(255, 255, 255, 0);      // Use the subnet mask provided
IPAddress primaryDNS(192, 168, 10, 222); // Use the primary DNS server IP address
IPAddress secondaryDNS(192, 168, 10, 224);// Use the secondary DNS server IP address

// Wi-Fi parameters
const char* ssid = "FRITZ!Box Fon WLAN 7390";
const char* password = "3735033917067700";

// MQTT server and topics
const char* mqtt_server = "192.168.13.173";
#define RANGE_TOPIC "温度/Fuellstand"
#define TIME_TOPIC "温度/Time"

// Create an instance of PubSubClient
WiFiClient espClient;
PubSubClient client(espClient);

// Variables for Ultrasonic sensor
#define Trigger_AusgangsPin 23 // Trigger pin connected to Ultrasonic Sensor's TRIG pin
#define Echo_EingangsPin 21 // Echo pin connected to Ultrasonic Sensor's ECHO pin
int maximumRange = 600; // Maximum measurable range in centimeters
int minimumRange = 2; // Minimum measurable range in centimeters
long Abstand; // Distance measured by the sensor
long Dauer; // Duration of the echo signal

// Library for temperature and humidity sensor KY-015
#define DHTPIN 22
#define DHTTYPE DHT22 // DHT22
DHT dht(DHTPIN, DHTTYPE);

// Function to connect to Wi-Fi network
void connectToNetwork() {
   
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
   Serial.begin(9600);
  // Configure static IP address
  if (!WiFi.config(localIP, gateway, subnet)) {
    Serial.println("STA Failed to configure");
  }
  connectToNetwork();
  WiFi.setSleep(false);
  Serial.println(WiFi.localIP());
  Serial.println(WiFi.macAddress());
  client.setServer(mqtt_server, 1883); // Configure MQTT server
  pinMode(Trigger_AusgangsPin, OUTPUT);
  pinMode(Echo_EingangsPin, INPUT);
 
  // DHT22 sensor initialization
  dht.begin();
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

  // Start serial communication at baud rate 115200
  
  // Print a header for the measurements
  Serial.println("--------- Temperature and Humidity (DHT22) ----------");
  // Measure humidity
  float h = dht.readHumidity();
  // Measure temperature
  float t1 = dht.readTemperature();
  // Check if there are any errors in the measurements
  // If an error is detected, print an error message and exit the loop
  if (isnan(h) || isnan(t1)) {
    Serial.println("Error while reading the sensor");
    return;
  }
  // Print humidity and temperature to the serial console
  Serial.print("Humidity: ");
  Serial.print(h);
  Serial.print(" %\t");
  Serial.print("Temperature: ");
  Serial.print(t1);
  Serial.print(char(186)); // Output the degree symbol
  Serial.println("C "); // Print "C" for Celsius
  Serial.println("-----------------------------------------------------------");
  Serial.println(" ");
  // Wait for 60 seconds before taking the next measurement
  delay(60000);
}
