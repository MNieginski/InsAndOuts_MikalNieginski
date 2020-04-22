float r,g,b,x,y;
import processing.serial.*; //imports Serial library from Processing

Serial myPort; // creates object from Serial class
int val=0; // creates variable for data coming from serial port

void setup() {
  size(400, 400);
  background(255);
 
  printArray(Serial.list()); // this line prints the port list to the console
  String portName = Serial.list()[0]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);
}

void draw() {
r = random(0,255);
g = random(0,255);
b = random(0,255);
x = random(0,width);
y = random(0,height);
 val = myPort.read();
  
  if ( val > 1 && val < 51) { // If data is available,
    fill (r, g, b);
    ellipse (x, y, 25, 25);
  } else if ( val > 51 && val < 102) {
    fill (r, g, b);
    ellipse (x, y, 25, 25);
}   else if ( val > 102 && val < 153) {
    fill (r, g, b);
    ellipse (x, y, 25, 25); 
}   else if ( val > 153 && val < 204) {
    fill (r, g, b);
    ellipse (x, y, 25, 25); 
}   else if ( val > 204 && val < 255) {
    fill (r, g, b);
    ellipse (x, y, 25, 25); 
}
println(val);
}
void random() {
  r = random(0,255);
  g = random(0,255);
  b = random(0,255);
  x = random(0,width);
  y = random(0,height);
}
