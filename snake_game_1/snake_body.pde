class snakebody {
  PVector loc, vel;
  int sz;
  //the class float components

  //what does the snakebody contain
  snakebody() {
    sz=30;
    loc= new PVector(width/2, height/2);
    vel= new PVector(1, 1);
  }

  //the colour and circle shape of the snake head
  void display() {
    fill(#771FED);
    ellipse(loc.x, loc.y, sz, sz);
  }

  //to move the first snake head
  void move() {
    loc.mult(vel);
  }
  void controls() {
    if (keyPressed == true) {
      if (key== CODED) {
        if (keyCode == UP) {
          vel.y *= -2;
        } 
        if (keyCode == DOWN) {
          vel.y *= 2;
        }
        if (keyCode == RIGHT) {
          vel.x *= 2;
        }
        if (keyCode == LEFT) {
          vel.x *= -2;
        }
      }
    }
  }

}
