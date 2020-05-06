//Midterm

String state= "original";
float r = random(0,255);
float g = random(0,255);
float b = random(0,255);

void setup() {
  size(700, 700);
  rectMode(CENTER);
  textAlign(CENTER);
  textSize(36);
}

void draw() {
  
  if (state=="original"){
   original(); 
  } else if (state=="v1"){
   v1(); 
  } else if (state =="v2"){
  v2();
  }
  println(state);
}

void mousePressed(){
 
  if (state== "original"){
    state = "v1";
  } else if (state=="v1"){
    state = "v2";
  } else if (state=="v2"){
    state = "original";
  }
  
}

void original(){
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
  
void v1(){
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
  fill(150, 0, 100);
  rect (i, 0, 20, 20);
  }
  
  for (int i= 50; i<width; i = i+50){
  fill(150, 0, 100);
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
  fill(0, 150, 255);
  ellipse(i, i, i, i);
  }
  } else {
  }
}


void v2(){
   background (r, g, b);
    
  //for loop drawing vertical lines from left to right
  for (int i=0; i<width; i=i+50) {
    fill(r, g, b);
    line (i, 0, i, i);
  }

  //for loop drawing horizontal lines from top to bottom
  for (int i=0; i<height; i=i+50) {
    fill(r, g, b);
    line (0, i, i, i);
  }
  
  fill(r, g, b);
  
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

  
