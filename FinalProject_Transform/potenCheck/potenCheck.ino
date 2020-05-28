const int SENSOR = A0; //sensor hooked up to analog pin A0
const int BUTTON = 2;
int val1 = 0;
int val2 = 0;
int buttonState = 0;
int lastButtonState = 0;

void setup() {
  pinMode (SENSOR, INPUT);
  pinMode (BUTTON, INPUT);
  Serial.begin(9600); // Start serial communication at 9600 baud
}

void loop() {
  val1 = analogRead(SENSOR); //read sensor and assign to variable called val
  val1 = map(val1, 0, 1023, 3, 255);
  delay(100); // Wait 100 milliseconds
  val2 = digitalRead(BUTTON); //read sensor and assign to variable called val
  delay(100);

  buttonState = digitalRead(BUTTON);

 /* if (buttonState != lastButtonState){
    if(buttonState == HIGH){
      buttonPushCounter++;
      Serial.println("on");
      Serial.println("number of button pushes: ");
      Serial.println(buttonPushCounter);
      } else {
          Serial.println("off");
      }
     delay(50); 
  }
  //lastButtonState = buttonState;

  //if (buttonPushCounter % 4 == 0){*/
     
 
  
  
  /////////Uncomment Serial.print() OR Serial.write() and not both!//////////////
  
  //Serial.println(val1); //to send human-readable data to Arduino monitor
  //Serial.println(val2);
  Serial.write(val1);  //to send binary data to Processing
  Serial.write(val2);
}
