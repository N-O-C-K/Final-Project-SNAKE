
//  start page and pause page
snakebody snake;
apple food;
PImage grass, apple;
int scorekeeper;

void setup() {
  snake = new snakebody();
  food= new apple();
  size(600, 500);
  grass = loadImage ("grass!.jpg");
  frameRate(20);
  scorekeeper = 0;
}

void draw() {
  //what is actually going on, what's working all at once
  background (grass);
  snake.move();
  snake.display();
  food.display();
  drawscorekeeper();

  //if the snake "eats" the apple image then it'll grown and the apple resets location
  if ( dist(food.x, food.y, snake.x.get(0), snake.y.get(0)) < snake.sz ) {
    food.reset();
    snake.snakegrow();
  }

  if (snake.lenth > scorekeeper) {
    scorekeeper = snake.lenth;
  }
}
//drawing the score keeper
void drawscorekeeper() {
  fill(#226427);
  textSize(30);
  text("SCORE:" + snake.lenth, 100, 23);
}



//the direction keys being pressed will change the direction of the snake particles
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

