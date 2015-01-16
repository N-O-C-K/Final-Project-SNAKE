snakebody snake;
apple food;
PImage grass,apple;
int scorekeeper;

void setup() {
  snake = new snakebody();
  food= new apple();
  size(600, 500);
  grass = loadImage ("grass!.jpg");
  apple = loadImage("bitten apple.png");
  frameRate = 5;
}

void draw() {
  background (grass);
  snake.move();
  snake.display();
  food.display();

  if ( dist(food.x, food.y, snake.x.get(0), snake.y.get(0)) < snake.sz ) {
    food.reset();
    snake.snakegrow();
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      snake.dir = "left";
    }

    if (keyCode == RIGHT) {
      snake.dir = "right";
    }

    if (keyCode == UP) {
      snake.dir = "up";
    }

    if (keyCode == DOWN) {
      snake.dir = "down";
    }
  }
}

