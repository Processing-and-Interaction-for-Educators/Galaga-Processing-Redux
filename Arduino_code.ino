//code for the basic controller for the game. 10k potentiometer on pin A0 and a button on digital pin 2

int buttonPin = 2;

void setup() {
  pinMode(buttonPin,OUTPUT);
  Serial.begin(9600);
}

void loop() {
  int buttonValue = digitalRead(buttonPin);
  int sensorValue = analogRead(A0);
  Serial.print(sensorValue);
  Serial.print(",");
  Serial.println(buttonValue);
}
