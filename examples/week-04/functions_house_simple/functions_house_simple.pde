
void setup(){
  size(500, 500);
  background(255);
  drawRandomSun();
  drawHouse(width/2, height/2, width/4);
}

void drawRandomSun(){

  fill(random(255), random(255), random(255));
  ellipse(random(width), random(height), 50, 50);

}

void drawHouse(int x, int y, int w){

  fill(255);
  rectMode(CENTER);
  triangle(x-w/2, y-w/2, x+w/2, y-w/2, x, y-w);
  rect(x, y, w, w);

}