
int state;
float r;
color c;

void setup(){
  size(400, 400);
  state = 0;
}


void draw(){

  background(c);
  
  // ----- Switch structure, ideal for this case ------
  
  switch(state){
    case 0:
      r = PI/2;
      c = #ff6600;
    break;
    //----
    case 1:
      r = PI;
      c = #2a7fff;
    break;
    //----
    case 2:
      r = PI+PI/2;
      c = #ffcc00;
    break;
    //----
    case 3:
      r = PI*2;
      c = #55d400;
    break;
  }
  
  // ----- If structure, way too long, right? ------
  
  //if(state == 0){
  //  r = PI/2;
  //  c = #ff6600;
  //}else if(state == 1){
  //  r = PI;
  //  c = #2a7fff;
  //}else if(state == 2){
  //  r = PI+PI/2;
  //  c = #ffcc00;
  //}else if(state == 3){
  //  r = PI*2;
  //  c = #55d400;
  //}
  
  arc(width/2, height/2, 100, 100, 0, r);
  
}

//
//
//

void mouseClicked(){
  
  state++;
  if(state > 3){
   state = 0; 
  }
  
}