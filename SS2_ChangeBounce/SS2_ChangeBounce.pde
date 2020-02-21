//Shapeshifter bounce. 
//click to make shape bounce and change color!
//move mouse around to change shape!
// move the mouse around the screen!

float x; 
float y;
float xMove;
float yMove;
float r = 255;
float g = 255;
float b = 255;

void setup(){
  size (700, 700);
  x = width/2;
  y = height/2;
  rectMode (CENTER);
}

void draw(){
  background(0);
  fill(175, 0, 175);
  
  if (keyPressed == true) {
    ellipse (x, y, 100, 100);
    x = x + xMove;
    y = y + yMove;
  }else {
    fill (50, 150, 100);
    rect (x, y, 125, 125);
    x = x + xMove;
    y = y + yMove;
  } 
   
   if (mouseX > width/2){
     fill( r, g, b);
     rect (x, y, 125, 125);
     x = x + xMove;
     y = y + yMove;
   } 
   
   if (mouseY > height/2){
     fill (r, g, b);
     ellipse (x, y, 100, 100);
     x = x + xMove;
     y = y + yMove;
  }
   if(x > width || x < 0){
     xMove = -xMove;
  }
  if(y > height || y < 0){
     yMove = -yMove; 
  }
}

void mousePressed(){
  xMove = random (1, 7);
  yMove = random (1, 7);
  r = random (255);
  g = random (255);
  b = random (255);
  
}
