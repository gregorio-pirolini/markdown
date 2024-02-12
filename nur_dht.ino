// Library for temperature and humidity sensor KY-015
#include "DHT.h"

// Input PINs
#define DHTPIN 22

// DHT22 sensor type will be initialized here
#define DHTTYPE DHT22 // DHT22
DHT dht(DHTPIN, DHTTYPE);

void setup() {
  // DHT22 sensor initialization
  dht.begin();
}

void loop() {
  // Start serial communication at baud rate 115200
  Serial.begin(115200);

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