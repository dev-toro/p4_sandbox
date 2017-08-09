
int state;
color c;

int x;
int y;
int x1;
int y1;

int r; // radius
int w; // width
int h; // height

void setup(){
  size(500, 500);
  state = 0;
  r = 150;
  w = 250;
  h = 250;
  x = 0;
  y = 0;
  x1 = width/2;
  y1 = height/2;
}

void draw(){
  background(255);
  noStroke();
  noFill();
  
  // 1
  fill(#ff6600);
  rect(x, y, w, h);
  // 2
  fill(#2a7fff);
  rect(x + w, y, w, h);
  // 3
  fill(#ffcc00);
  rect(x, y + h, w, h);
  // 4
  fill(#55d400);
  rect(x + w, y + h, w, h);
  
  // Color switch
  switch(state){
    case 0:
      c = #ffffff;
    break;
    //----
    case 1:
      c = #ff6600;
    break;
    //----
    case 2:
      c = #2a7fff;
    break;
    //----
    case 3:
      c = #ffcc00;
    break;
    //----
    case 4:
      c = #55d400;
    break;
  }
  
  // draw fill & ellipse
  fill(c);
  ellipse(x1, y1, r, r);
}

void mouseClicked(){
  // Rects area
  // 1
  if(mouseX >= x & mouseX <= x+w  & mouseY > y & mouseY <= y+h){
    state = 1;
  }
  // 2
  if(mouseX >= x+w & mouseX <= x+(w*2) & mouseY > y & mouseY <= y+h){
    state = 2;
  }
  // 3
  if(mouseX >= x & mouseX <= x+w  & mouseY > y+h & mouseY <= y+(h*2)){
    state = 3;
  }
  // 4
  if(mouseX >= x+w & mouseX <= x+(w*2)  & mouseY > y+h & mouseY <= y+(h*2)){
    state = 4;
  }
  // Ellipse area
  if(dist(mouseX, mouseY, x1, y1) < r/2){
    state = 0;
  }
  
}