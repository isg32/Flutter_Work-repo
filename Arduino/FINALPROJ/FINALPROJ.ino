#include <ESP8266WiFi.h>
#include "DHT.h"

#define DHTPIN D0
#define DHTTYPE DHT11

const char* ssid = "Infolabz";
const char* password = "Il@123456";
const char* host = "radhe123.000webhostapp.com";

DHT dht(DHTPIN, DHTTYPE);
const int waterLevel = A0; // Assuming the soil moisture sensor is connected to analog pin A0
const int soilMoisturePin = D0; 

void setup() {
  // put your setup code here, to run once:
    Serial.begin(115200);
    dht.begin();
    delay(100);

     
  Serial.println();
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);


  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");}
  
  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());

}

void loop() {
  // put your main code here, to run repeatedly:
  int waterLevel = analogRead(waterLevel);
  Serial.print("Water Level: ");
  Serial.println(waterLevel);
  float a = waterLevel;
  delay(100);

  int soilMoistureValue = analogRead(soilMoisturePin);
  Serial.print("Soil Moisture: ");
  Serial.println(soilMoistureValue);
  float s = soilMoistureValue;
  delay(1000);

  int h = dht.readHumidity();
  int t = dht.readTemperature();
  float hs = h;
  float ts = t;
  Serial.println(h);
  Serial.println(t);

  Serial.print("connecting to ");
  Serial.println(host);

  WiFiClient client;
  const int httpPort = 80;
  if (!client.connect(host, httpPort)) {
    Serial.println("connection failed");
    return;
  }

  String urla = "/API/soimoi.php?soilMoistureValue=" + String(s);
  String urlb = "/API/dht.php?temp=" + String(ts, 2) + "&hum=" + String(hs, 2);
  String urlc = "/API/wl.php?waterLevel=" + String(a);
  Serial.print("Requesting URL: ");
  Serial.println(urla);
  Serial.println(urlb);
  Serial.println(urlc);

  client.print(String("GET ") + urla + " HTTP/1.1\r\n" +
               "Host: " + host + "\r\n" + 
               "Connection: close\r\n\r\n");
  client.print(String("GET ") + urlb + " HTTP/1.1\r\n" +
               "Host: " + host + "\r\n" + 
               "Connection: close\r\n\r\n");
  client.print(String("GET ") + urlc + " HTTP/1.1\r\n" +
               "Host: " + host + "\r\n" + 
               "Connection: close\r\n\r\n");
  delay(500);
  
  while(client.available()){
    String line = client.readStringUntil('\r');
    Serial.print(line);

}
}