
color[] c;

void setup(){
  size(600, 600);
  c = new color[9];
  
 for(int i = 0; i < 9; i++){
  c[i] = (255/8)*i;
 }
 
}


void draw(){

  int x = 0;
  int y = 0;
  int tam = 200;
  
  for(int i = 0; i < 9; i++){
    fill(c[i]);
    rect(x, y, tam, tam);
    x+=tam;
    if(x >= width){
      x = 0;
      y+=tam;
    }
  }
  
}

void mouseClicked(){
 
 int x = 0;
 int y = 0;
 int tam = 200;
 for(int i = 0; i < 9; i++){
    if(mouseX >= x && mouseX <= x+tam && mouseY >= y && mouseY <= y+tam){
     c[i] = #00ffff;
    }
    x+=tam;
    if(x >= width){
      x = 0;
      y+=tam;
    }
  }
  
}