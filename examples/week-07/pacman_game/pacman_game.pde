
Pacman pacman;
ArrayList<Ghost> ghosts;

void setup(){

  size(600, 600);
  smooth();
  pacman = new Pacman(width/2, height/2);
  ghosts = new ArrayList<Ghost>();
  for(int i = 0; i < int(random(5,10)); i++){
    ghosts.add(new Ghost(random(width)-20, random(height)-20, int(random(0,4))));
  }
  
}


void draw(){
   background(0);
   noStroke();
  // Draw ghosts
  for(int i = 0; i < ghosts.size(); i++){
    ghosts.get(i)._draw();
    
    if(pacman.eat(ghosts.get(i).getX(), ghosts.get(i).getY())){
      ghosts.remove(i);
    }
  }
  // Draw pacman
  pacman._draw();
}



void keyPressed(){
    pacman.keyPressed();
}