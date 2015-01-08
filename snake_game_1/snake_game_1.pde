boolean gameStart = false;


int x, y, sz;

void setup() {
  size(600, 500);
  x=width/2;
  y= height/2;
  sz=30;
}

void draw() {
  background(0);
  if (gameStart = true) {
   
    ellipse(x, y, sz, sz);

    if (keyPressed == true) {
      if (key== CODED) {
        if (keyCode == UP) {
          y -= 2;
        } 
        if (keyCode == DOWN) {
          y += 2;
        }
        if (keyCode == RIGHT) {
          x += 2;
        }
        if (keyCode == LEFT) {
          x-= 2;
        }
      }
    }
  }
}

void mousePressed() {
  gameStart = !gameStart;
}

