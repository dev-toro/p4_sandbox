

void setup(){
  size(600, 600);
}


void draw(){

  int x = 0;
  int y = 0;
  int tam = 200;
  
  for(int i = 0; i < 9; i++){
    fill((255/9)*i);
    rect(x, y, tam, tam);
    x+=tam;
    if(x >= width){
      x = 0;
      y+=tam;
    }
  }
  
}