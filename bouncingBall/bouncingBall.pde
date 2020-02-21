float x; 
float y;
float xMove;
float yMove;
void setup(){
  size (700, 700);
  x = width/2;
  y = height/2;
}

void draw(){
  background(0);
  fill(175, 0, 175);
  ellipse (x, y, 100, 100);
  x = x + xMove;
  y = y + yMove;
  
  if(x > width || x < 0){
     xMove = -xMove;
  }
  if(y > height || y < 0){
     yMove = -yMove; 
  }
    
}

void mousePressed(){
  xMove = random (-5, 5);
  yMove = random (-5, 5);
  
}
