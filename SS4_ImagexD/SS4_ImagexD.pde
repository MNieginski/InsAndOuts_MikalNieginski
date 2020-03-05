//Title: Image xD
//Click the mouse for a tip from cool granny!

PImage granny;

void  setup(){
  size(800, 800);
  granny = loadImage("coolGranny.jpg");
  imageMode(CENTER);
  textAlign(CENTER);
}

void draw(){
  background(0);
  image(granny, width/2, height/2);
  
  fill(255);
  triangle(300,200, 400, 340, 200, 295);
  ellipse(155, 200, 300, 200);
  
  textSize(30);
  fill(0);
  text("Cool Granny says;", 155, 185);
  text("Drugs are not cool!", 155, 230);
  
  if (mousePressed == true){
   fill(255);
   triangle(300,200, 400, 340, 200, 295);
   ellipse(155, 200, 300, 200);
  
   textSize(30);
   fill(0);
   text("Be like me,", 155, 185);
   text("and enjoy life!", 155, 215); 
  }
    
}
