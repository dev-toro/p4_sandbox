
void setup(){
  size(600, 200);
}

void draw(){
  background(255);
  
  for(int i = 0; i < 19; i++){
  drawHouse(width/20+(i*width/20), height/2, width/20);
  }
}

void drawHouse(int x, int y, int w){

  fill(255);
  rectMode(CENTER);
  triangle(x-w/2, y-w/2, x+w/2, y-w/2, x, y-w);
  rect(x, y, w, w);

}