class snakebody {
  //variables needed
  int sz, lenth;
  ArrayList<Float> x, y;

  //snake constructor
  snakebody() {
    lenth = 1;
    dir = "right" ;
    x = new ArrayList ();
    y= new ArrayList ();
    x.add(random(height));
    y.add( random(width));
  }
  // if the direction is tested correct then move in that direction
  void move() {
    for (int i = lenth; i >0; i-= 1) {
      x.set(i, x.get(i-1));
      y.set(i, y.get(i-1));
    }
    if ( dir == "left") {
      x.set(0, x.get(0) - sz);
    }

    if (dir == "right" ) {
      x.set (o, x.get(0) +sz);
    }
    if ( dir == "up" ) {
      y.set( 0, y.get(0) - sz);
    }
    if ( dir == "down" ) {
      y.set (0, y.get(0) +sz);
    }

//i think a boolean goes somewhere here?

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

  void display() {
    for (int i = 0; i < lenth; i++) {
      ellipse(x, y, sz, sz);
    }

    void snakegrow() {
      x.add(x.get(lenth -1) + sz) ;
      y.add(y.get(lenth -1) + sz) ;
    }

