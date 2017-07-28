
int x = 250;
int y = 250;
float r = 100;

void setup(){
 size(500, 500);
}

void draw(){
  
  //x = mouseX;
  //y = mouseY;
  //r++;
  
  background(255);
  fill(255);
  strokeWeight(5);
  ellipse(x, y, r, r);
  arc(x, y + 10, r/2, r/2, 0, PI);
  fill(0);
  ellipse(x - 20, y - 5, r/10, r/10);
  ellipse(x + 20, y - 5, r/10, r/10);
  
}