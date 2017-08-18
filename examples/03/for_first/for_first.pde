
void setup(){
  size(600, 500);
  rectMode(CENTER);

}

void draw(){
  
  background(255);
  
  int tam = 10;
  int x = tam/2; // cero
  
  for(int i = 0; i < 10; i++){
 
    rect(x, height/2, tam, tam);
    tam+=10;
    x+=tam;
  }


}