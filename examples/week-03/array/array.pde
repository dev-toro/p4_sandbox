
int[] _rect;

void setup(){
  
  size(200, 200);
  rectMode(CENTER);
  
  _rect = new int[5];
  _rect[0] = width/2; // x
  _rect[1] = height/2; // y
  _rect[2] = 100; // width
  _rect[3] = 50; // height
  _rect[4] = 0; // color
  
}

void draw(){

 background(255);
 
 fill(_rect[4]);
 rect(_rect[0], _rect[1], _rect[2], _rect[3]);
  
}