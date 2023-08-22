#include <ESP8266WiFi.h>
#include "DHT.h"

#define DHTPIN D2
#define DHTTYPE DHT11

const char* ssid = "Redme note 6 pro";
const char* password="Amol12345";

DHT dht(DHTPIN, DHTTYPE);

void setup() {
  Serial.begin(115200);
  delay(100);
 dht.begin();
 
  // Connect to WiFi network
  Serial.println();
  Serial.println();
  Serial.print("Connecting to ");
  Serial.print(ssid);
  Serial.println(" ...");
 
  WiFi.begin(ssid, password);
 
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print("... ");
  }
  //flush();
  Serial.println("");
  Serial.println("WiFi connected");
 
  // Start the server
  //Server.begin();
  Serial.println("");
  Serial.println("IP Address: ");
  Serial.print(WiFi.localIP());
  Serial.println("Netmask: ");
  Serial.println(WiFi.subnetMask());
  Serial.println("Gateway: ");
  Serial.println(WiFi.gatewayIP());
  Serial.println("");
 
}
 
void loop() {
  // Check if a client has connected
  float h = dht.readHumidity();
  float t = dht.readTemperature();

  if (isnan(h) || isnan(t)){
    Serial.println("Failed...");
    return;
  }

  Serial.print("Temperature: ");
  Serial.print(t);
  Serial.print("C\t");
  Serial.print("Humidity: ");
  Serial.print(h);
  Serial.print(" % \n");
  
  delay(2000);
}
