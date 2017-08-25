
int[] _size;
int y;

void setup(){

  size(500, 200);
  noStroke();
  _size = new int[5];
  y = height/2;
  
  for(int i = 0; i < 5; i++){
    _size[i] = int(random(10, 50));
  }

}



void draw(){
  
  background(255);
  
  int x = 50;
  
  for(int i = 0; i < 5; i++){
    
    fill(#86C62E);
    ellipse(x, y, _size[i], _size[i]);
    x=x+_size[i]+(width/5)-50;
    
  }


}

void mouseClicked(){

  int x = 50;
     
  for(int i = 0; i < 5; i++){
   
   if(dist(mouseX, mouseY, x, y) < _size[i]/2){
     _size[i] = _size[i]+5;
   }
   x=x+_size[i]+(width/5)-50;

  }

  
}