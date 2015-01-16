class apple {
  //all the variables
  float x, y ;
  PImage bitten;


  //constructor
  apple() {
    x = random (width);
    y = random (height);
    bitten = loadImage("bitten apple.png");
  }

  //what is it displaying
  void display() {
    //insert the red "good" apple that grows the snake
<<<<<<< HEAD

 ellipse(x,y,25,25);
=======
    bitten(bitten, x, y);
>>>>>>> origin/master
  }

  //after you eat the food, it'll reset to a new random location
  void reset() {
    x = random(50, width - 100);
    y = random(50, height - 100);
  }
}

