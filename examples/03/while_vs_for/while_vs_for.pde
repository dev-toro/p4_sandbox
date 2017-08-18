

void setup(){

  size(500, 500);

}


void draw(){
  
  background(0);
  
  // For
 int x = 25;
 int y = 25;
 
 for(int i = 0; i < 100; i++){
   fill(random(255));
   ellipse(x, y, i/2, i/2);
   x+=50;
   if(x >= width-10){
     x = 25;
     y+=50;
   }
 }
  
}