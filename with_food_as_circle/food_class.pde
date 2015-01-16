class apple {
  //all the variables
  float x, y ;

  //constructor
  apple() {
    x = random (width);
    y = random (height);
  }

  //what is it displaying
  void display() {
    //insert the red "good" apple that grows the snake
    fill(250);
    ellipse(x, y, 25, 25);
  }

  //after you eat the food, it'll reset to a new random location
  void reset() {
    x = random(50, width - 100);
    y = random(50, height - 100);
  }
}

