class apple {
  //all the variables
  float x, y ;
  PImage apple;


  //constructor
  apple() {
    x = random (width);
    y = random (height);
    apple = loadImage("bitten apple.png");
  }

  //what is it displaying
  void display() {
    //insert the red "good" apple that grows the snake
    fill(#0F37F5);
    apple(x,y);
  }

  //after you eat the food, it'll reset to a new random location
  void reset() {
    x = random(50, width - 100);
    y = random(50, height - 100);
  }
}

