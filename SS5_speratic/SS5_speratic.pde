// Speratic
// if the mosue is pressed, lots of things change.
// I used a lot of your code as a base for this.

int[] pointX= new int[100];
int[] pointY= new int[100];

float move=1.25;
boolean mouse = true;

float r = random(0,255);
float g = random(0,255);
float b = random(0,255);

float c1;
float c2;

void setup() {
  size (800, 800);
rectMode (CENTER);

  //initializing the array with for loop and random numbers
  for (int i=0; i<100; i++) {
    pointX[i]= int(random(width));
    pointY[i]= int (random(height));
  }
}

void draw() {
  background(b, r, g);
  fill(255);
  ellipse(mouseX, mouseY, c1, c2);
  

  //draw ellipses
  stroke(100);
  fill(r, g, b);
  for (int i=0; i<pointX.length; i++) {
    rect(pointX[i]+move, pointY[i], 45, 45);
  }

  //draw lines
  stroke(g, b, r);
  for (int i=0; i<100; i++) {
    line (pointX[i], pointY[i], mouseX, mouseY);

    //if off screen, move the other direction
    if (pointX[i] + move>width*2 || pointX[i] + move< -width) {
      move=-move;
    } else {
      pointX[i]+=move;
      
       if (move > 1.25){
   move--; 
  } else if (move <= 1.25){
   move = move + 2; 
  }
    }
  }
 
}

void mousePressed(){
  if (mouse == true){
    r = random(0, 255);
    g = random(0, 255);
    b = random(0, 255);
    c1 = random(25, 95);
    c2 = random(25, 95);
  }
    
}
