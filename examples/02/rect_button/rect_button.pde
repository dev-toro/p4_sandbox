
boolean isON;
int x;
int y;
int w; // width
int h; // height

void setup(){
  size(500, 500);
  isON = false;
  w = 200;
  h = 60;
  x = width/2 - (w/2);
  y = height/2 - (h/2);
}

void draw(){
  background(255);
  
  if(isON == true){
    fill(0);
  }else{
   fill(255); 
  }
  
  rect(x, y, w, h);
}

void mouseClicked(){

  if(mouseX >= x & mouseX <= x+w  & mouseY > y & mouseY <= y+h){
    isON = !isON;
  }
  
}