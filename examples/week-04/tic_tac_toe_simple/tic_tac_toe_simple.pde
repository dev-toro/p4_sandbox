
Square[] grid;

void setup(){
  
  size(500, 500);
  
  // Define Array of circles
  grid = new Square[9];
  
  // Create circle objects inside the array
  int x = 0;
  int y = 0;
  
  for(int i = 0; i < 9; i++){
    grid[i] = new Square(x, y);
    x+=width/3;
    if(x+width/3 >= width){
      x = 0;
      y+=height/3;
    }
    
  }

}

void draw(){
  
  background(0);
  
 // Draw and move Circles
 for(int i = 0; i < 9; i++){
   grid[i].canvasDraw();
 }

}

void mouseClicked(){
  
 // Chance color if clicked
 for(int i = 0; i < 9; i++){
   grid[i].changeState();
 }
 
}

// --------------------------------------------
// -------------- SQUARE CLASS ----------------
// --------------------------------------------

class Square{

  float x, y;
  int w;
  int state;

  Square(int x, int y){
    this.x = x;
    this.y = y;
    w = width/3;
    state = 0;
  }
  
  void canvasDraw(){
    strokeWeight(2);
    fill(255);
    rect(x, y, w, w);
    fill(0);
    strokeWeight(10);
    switch(state){
      case 1:
        noFill();
        ellipse(x + w/2, y + w/2, w-40, w-40);
      break;
      case 2:
        line(x+30, y+30, x+w-30, y+w-30);
        line(x+30, y+w-30, x+w-30, y+30);
      break;
    }
  }
  
  void changeState(){
    if(mouseX >= x & mouseX <= x+w & mouseY >= y & mouseY <= y+w){
      state++;
      if(state > 2){
        state = 0;
      }
    }
  }

}