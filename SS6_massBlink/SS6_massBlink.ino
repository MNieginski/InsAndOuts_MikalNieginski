  // Labels
  const int LED1 = 13; 
  const int LED2 = 12;
  const int LED3 = 11;
  const int LED4 = 10;
  const int LED5 = 9;
  const int button = 2;

  //setup for button
  int buttonState = 0;

void setup() {
  // put your setup code here, to run once:
  pinMode (LED1, OUTPUT);
  pinMode (LED2, OUTPUT);
  pinMode (LED3, OUTPUT);
  pinMode (LED4, OUTPUT);
  pinMode (LED5, OUTPUT);
  pinMode (button, INPUT);
}

void loop() {
  // put your main code here, to run repeatedly:

  buttonState = digitalRead(button);
  delay (10);

  if (buttonState == HIGH) {
  digitalWrite(LED3, HIGH);
  delay (500);
  digitalWrite(LED3, LOW);
  delay (500);
  digitalWrite(LED2, HIGH);
  digitalWrite(LED4, HIGH);
  delay(500);
  digitalWrite(LED2, LOW);
  digitalWrite(LED4, LOW);
  delay (500);
  digitalWrite(LED1, HIGH);
  digitalWrite(LED5, HIGH);
  delay(500);
  digitalWrite(LED1, LOW);
  digitalWrite(LED5, LOW);
  delay (500);
  digitalWrite(LED1, HIGH);
  digitalWrite(LED5, HIGH);
  delay(500);
  digitalWrite(LED2, HIGH);
  digitalWrite(LED4, HIGH);
  delay(500);
  digitalWrite(LED3, HIGH);
  delay(500);
} else {
  digitalWrite(LED1, LOW);
  digitalWrite(LED2, LOW);
  digitalWrite(LED3, LOW);
  digitalWrite(LED4, LOW);
  digitalWrite(LED5, LOW);
 }
}
