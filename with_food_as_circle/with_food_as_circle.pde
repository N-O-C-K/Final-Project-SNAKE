snakebody snake;
apple food;
PImage img;
int scorekeeper;

void setup() {
  snake = new snakebody();
  food= new apple();
  size(600, 500);
  img = loadImage ("grass!.jpg");
  scorekeeper = 0;
  frameRate(15);
}

void draw() {
  background (img);
  snake.move();
  snake.display();
  food.display();
  drawscorekeeper();

  if ( dist(food.x, food.y, snake.x.get(0), snake.y.get(0)) < snake.sz ) {
    food.reset();
    snake.snakegrow();
  }
  if (snake.lenth > scorekeeper) {
    scorekeeper = snake.lenth;
  }
}
//drawing the score
void drawscorekeeper() {
  fill(#226427);
  textSize(30);
  text("SCORE: " + snake.lenth, 100, 23);

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

