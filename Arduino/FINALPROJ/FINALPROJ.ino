#include <ESP8266WiFi.h>

const char* ssid = "RadheBhai";
const char* password = "8153022369";
const char* host = "radhe123.000webhostapp.com";


const int waterLevel = A0; // Assuming the soil moisture sensor is connected to analog pin A0


void setup() {
   
  Serial.begin(115200);
  delay(100);
  
  Serial.println();
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);


  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }


  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
}


void loop() {
  int waterLevel = analogRead(waterLevel);
  Serial.print("Water Level: ");
  Serial.println(waterLevel);
  float s = waterLevel;
  delay(1000);
   

  
  if (isnan(s)) {
    Serial.println("Failed to read from soimoi sensor!");
    return;
  }

  Serial.print("connecting to ");
  Serial.println(host);

  WiFiClient client;
  const int httpPort = 80;
  if (!client.connect(host, httpPort)) {
    Serial.println("connection failed");
    return;
  }
  
  String url = "/API/wl.php?waterLevel=" + String(s);
  Serial.print("Requesting URL: ");
  Serial.println(url);

  client.print(String("GET ") + url + " HTTP/1.1\r\n" +
               "Host: " + host + "\r\n" + 
               "Connection: close\r\n\r\n");
  delay(500);
  
  while(client.available()){
    String line = client.readStringUntil('\r');
    Serial.print(line);
  }
   
  
  
  Serial.println();
  Serial.println("closing connection");
  delay(3000);


}




