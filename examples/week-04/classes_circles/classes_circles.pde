
Circle[] circles;

void setup(){
  
  size(500, 500);
  noStroke();
  
  // Define Array of circles
  circles = new Circle[20];
  
  // Create circle objects inside the array
  for(int i = 0; i < 20; i++){
    circles[i] = new Circle();
  }

}

void draw(){
  
  background(0);
  
 // Draw and move Circles
 for(int i = 0; i < 20; i++){
   circles[i].canvasDraw();
   circles[i].randomMove();
 }

}

void mouseClicked(){
  
 // Chance color if clicked
 for(int i = 0; i < 20; i++){
   circles[i].changeColor();
 }
 
}

// --------------------------------------------
// -------------- CIRCLE CLASS ----------------
// --------------------------------------------

class Circle{

  float x, y;
  color c;

  Circle(){
    x = random(width);
    y = random(height);
    c = color(random(255), random(255), random(255));
  }
  
  void canvasDraw(){
    fill(c);
    ellipse(x, y, 50, 50);
  }
  
  void randomMove(){
    x+= random(-1,1);
    y+= random(-1,1);
  }
  
  void changeColor(){
    if(dist(mouseX, mouseY, x, y) < 25){
      c = color(random(255), random(255), random(255));
    }
  }

}