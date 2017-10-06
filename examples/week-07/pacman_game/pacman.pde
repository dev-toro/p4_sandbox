
class Pacman {
  float x, y, dx, dy;

  public Pacman(float x, float y) {
    this.x = x;
    this.y = y;
  }

  void _draw() {
    fill(255, 255, 0);
    ellipse(x+dx, y+dy, 40, 40);
    
    // Restrict to borders
    if (x < 0) {
      x = 20;
    }
    if (y < 0) {
      y = 20;
    } 
    if (x > width) {
      x = width-20;
    }
    if (y > height) {
      y = height-20;
    }
  }
  
  boolean eat(float x, float y){
    // Check distance to the ghost 
    if(dist(this.x, this.y, x, y)<20){
      println("dead");
      return true;
    }else{
      return false;
    }
  }

  void keyPressed() {
    if (key == CODED) {
      switch(keyCode) {
      case UP:
        y = y -= 15;
        break;
      case DOWN:
        y = y += 15;
        break;
      case LEFT:
        x = x -= 15;
        break;
      case RIGHT:
        x = x += 15;
        break;
      }
    }
  }
}