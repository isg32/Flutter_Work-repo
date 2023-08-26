int hi=12;
int hi2=13;
int chacha=8;
int sansor=A3;
void setup() {
  // put your setup code here, to run once:
 pinMode(hi,OUTPUT);
 pinMode(hi2,OUTPUT);
 pinMode(chacha,OUTPUT);
 Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  int sanval=analogRead(sansor);
  Serial.println(sanval);
  digitalWrite(hi,HIGH);
  digitalWrite(chacha,HIGH);
  delay(100);
  digitalWrite(chacha,LOW);
  delay(100);
  digitalWrite(hi,LOW);
  digitalWrite(hi2,HIGH);
  digitalWrite(chacha,HIGH);
  delay(100);
  digitalWrite(hi2,LOW);
  digitalWrite(chacha,LOW);
  delay(100);
  digitalWrite(chacha,HIGH);
  delay(100);
  digitalWrite(chacha,LOW);
}