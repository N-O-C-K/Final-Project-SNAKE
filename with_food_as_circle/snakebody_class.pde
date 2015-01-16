class snakebody {
  //variables needed
  int lenth;
  ArrayList<Float> x, y;
  String dir;
  float sz;

  //snake constructor
  
  snakebody() {
    lenth = 1;
    sz = 35;
    dir = "right" ;
    x = new ArrayList ();
    y= new ArrayList ();
    x.add(random(height));
    y.add( random(width));
  }
  // if the direction is tested correct then move in that direction
  void move() {
    for (int i = lenth - 1; i >0; i = i- 1) {
      x.set( i, x.get (i-1));
      y.set(i, y.get(i-1));
    }
    if ( dir == "left") {
      x.set(0, x.get(0) - sz);
    }

    if (dir == "right" ) {
      x.set (0, x.get(0) +sz);
    }
    if ( dir == "up" ) {
      y.set( 0, y.get(0) - sz);
    }
    if ( dir == "down" ) {
      y.set (0, y.get(0) +sz);
    }
    x.set(0, (x.get(0) + width) % width);
    y.set( 0, (y.get(0) + height) % height);

    //if it gets eaten, then the whole tail needs to disappear
    if (checkEaten() == true ) {
      lenth= 1;
      float xtemp = x.get (0);
      float ytemp = y.get(0);
      x.clear();
      y.clear();
      x.add(xtemp);
      y.add(ytemp);
    }
  }
  
  boolean checkEaten() {
    for (int i=1; i <lenth; i++) {
      if (dist(x.get(0), y.get(0), x.get(i), y.get(i)) < sz) {
        return true;
      }
    }
    return false;
  }

  //this is what the snake will look like
  void display() {
    for (int i = 0; i < lenth; i++) {
      fill(250,0, map(i-1, 0, lenth-1, 250, 0));
      ellipse(x.get(i), y.get(i), sz, sz);
    }
  }

  //whenever the snake eats, it'll grow
  void snakegrow() {
    x.add(x.get(lenth -1) + sz) ;
    y.add(y.get(lenth -1) + sz) ;
    lenth++;
  }
}

