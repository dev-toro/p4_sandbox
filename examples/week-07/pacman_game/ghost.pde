
class Ghost {
  float x, y, dx, dy, agility;
  int type;

  public Ghost(float x, float y, int type) {
    this.x = x;
    this.y = y;
    this.type = type;
    agility = random(10, 100);
    chooseDirection();
  }

  void _draw() {
      switch(type) {s
      case 0:
        fill(0, 255, 0);
        ellipse(x, y, 20, 20); 
        break;
      case 1:
        fill(0, 0, 255);
        rectMode(CENTER);
        rect(x, y, 20, 20);
        break;
      case 2:
        fill(255, 0, 0);
        ellipse(x, y, 20, 20);     
        break;
      }
      move();
  }

  void move() {

    // Basic Movment
    x = x + dx;
    y = y + dy;
    agility--;

    // Direction Change
    if (agility <= 0) {
      chooseDirection();
      agility = random(10, 100);
    }

    // Restrict to borders
    if (x < 0) {
      dx = dx*-1;
    }
    if (y <= 0) {
      dy = dy*-1;
    } 
    if (x > width) {
      dx = dx*-1;
    }
    if (y > height) {
      dy = dy*-1;
    }
  }

  void chooseDirection() {
    // Choose a new direction
    switch(int(random(0, 4))) {
    case 0: // UP
      dy = random(-1, -2);
      dx = 0;
      break;
    case 1: // DOWN
      dy = random(1, 2);
      dx = 0;
      break;
    case 2: // LEFT
      dx = random(-1, -2);
      dy = 0;
      break;
    case 3: // RIGHT
      dx = random(1, 2);
      dy = 0;
      break;
    }
  }

  float getX() {
    return x;
  }
  float getY() {
    return y;
  }
}