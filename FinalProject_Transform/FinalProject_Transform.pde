//Final

String state = "original";
float r = random(0,255);
float g = random(0,255);
float b = random(0,255);
float x, y;


import processing.serial.*; //imports Serial library from Processing

Serial myPort; // creates object from Serial class
int val =0; // creates variable for data coming from serial port

int pot, buttonState, button;
int lastButtonState = 0;
//boolean button;

void setup() {
  background(255);
  size(700, 700);
  rectMode(CENTER);
  textAlign(CENTER);
  textSize(36);
  
  printArray(Serial.list()); // this line prints the port list to the console
  String portName = Serial.list()[0]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);
}

void draw() {
  
   if ( myPort.available() > 0) { // If data is available,
    val = myPort.read(); // read it and store it in val
   }
   
   if (val == 0){
     button = lastButtonState;
   } else if (val == 1){
     button = 1;
   } else if (val > 1){
    pot = val; 
   }
  
  if (state=="original" && button == 0){
   original(); 
  } else if (state=="orignal" && button == 1){
   state = "next";
  } else if (state == "next"){
    next();
  } else if (state== "next" && button == 0){
   state = "original";
  }
  println(state);
  //println(val);
  println("button " + button);
  println("pot " + pot);
}

/*void mousePressed(){
 
  if (state== "original"){
    state = "v1";
  } else if (state=="next"){
    state = "v2";
  } 
  
}*/

void original(){
  
  
r = random(0,255);
g = random(0,255);
b = random(0,255);
x = random(0,width);
y = random(0,height);

  
  if ( val > 3 && val < 51) { 
    fill (r, g, b);
    ellipse (x, y, 25, 25);
  } else if ( val > 51 && val < 102) {
    fill (r, g, b);
    rect (x, y, 25, 25);
}   else if ( val > 102 && val < 153) {
    fill (r, g, b);
    ellipse (x, y, 25, 25); 
}   else if ( val > 153 && val < 204) {
    fill (r, g, b);
    rect (x, y, 25, 25); 
}   else if ( val > 204 && val < 255) {
    fill (r, g, b);
    ellipse (x, y, 25, 25); 
}
  
}
  
void next(){
  

r = random(0,255);
g = random(0,255);
b = random(0,255);
x = random(0,width);
y = random(0,height);

  
  if ( val > 3 && val < 36) {
  fill (r, g, b);
  triangle(0 , 0, width/2, height, 0, height);
  } else if ( val > 36 && val < 72) {
  triangle(width, 0, width/2, height, width, height);
  } else if ( val > 72 && val < 108) {
  fill(g, b, r);
  triangle(width/2, 100, 200, 400, 500, 400);
  } else if ( val > 108 && val < 144) {
  fill(b, r, g);
  ellipse (width/2, 50, 100, 100);
  } else if ( val > 144 && val < 180) {
  fill(255);
  triangle(275, 250, 425, 250, width/2, 400);
 } else if ( val > 180 && val < 216) {
  fill(255);
  ellipse(width/2, 50, 75, 75);
 } else if ( val > 216 && val < 252) {
  fill(b, r, g);
  ellipse(width/2, 50, 25, 25);
}

}
