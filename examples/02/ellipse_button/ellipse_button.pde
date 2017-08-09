
boolean isON;
int x;
int y;
int r; // radius

void setup(){
  size(500, 500);
  isON = false;
  r = 100;
  x = width/2;
  y = height/2;
}

void draw(){
  background(255);
  
  if(isON == true){
    fill(0);
  }else{
   fill(255); 
  }
  
  ellipse(x, y, r, r);
}

void mouseClicked(){

  if(dist(mouseX, mouseY, x, y) < r/2){
    isON = !isON;
  }
  
}