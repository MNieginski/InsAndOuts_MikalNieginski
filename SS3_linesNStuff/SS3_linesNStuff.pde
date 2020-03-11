//Lines n' Stuff

void setup() {
  size(700, 700);
  background (255);
  rectMode(CENTER);
}

void draw() {

    background (255);
    
  //for loop drawing vertical lines from left to right
  for (int i=0; i<width; i=i+50) {
    line (i, 0, i, i);
  }

  //for loop drawing horizontal lines from top to bottom
  for (int i=0; i<height; i=i+50) {
    line (0, i, i, i);
  }
  
  fill(0);
  
  for (int i=50; i<height; i = i+50){
  ellipse(i, i, 20, 20);
  }
  
  for (int i= 50; i<width; i = i+50){
  rect (i, 0, 20, 20);
  }
  
  for (int i= 50; i<width; i = i+50){
  rect (0, i, 20, 20);
  }
  
  if (mouseX > width/2 && mouseY > height/2){
      for (int i= 50; i<width; i = i+50){
  rect (i, 0, i, i);
  }
  
  for (int i= 50; i<width; i = i+50){
  rect (0, i, i, i);
  }
  } else if (mouseX < width/2 && mouseY < height/2){
    
  for (int i=50; i<height; i = i+50){
  ellipse(i, i, i, i);
  }
  } else {
  }
  }
