boolean gameStart = false;

  PVector loc, vel;
  int sz;
snakebody play;

void setup() {
  size(600, 500);
//  x=width/2;
//  y= height/2;
//  sz=30;
loc= new PVector(width/2, height/2);
vel= new PVector(2,2);
play= new snakebody();
}

void draw() {
  background(0);
 play.move;
 play.display;
 play.controls;

void mousePressed() {
  gameStart = !gameStart;
}

