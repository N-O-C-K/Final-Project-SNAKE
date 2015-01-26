
//  start page and pause page
boolean gamestart, startscreen;

snakebody snake;
apple food;
PImage grass, apple;
int scorekeeper;

void setup() {
  snake = new snakebody();
  food= new apple();
  size(600, 500);
  grass = loadImage ("grass!.jpg");
  frameRate(15);
  scorekeeper = 0;
  imageMode(CENTER);
  startscreen = true;
}

void draw() {
  //what is actually going on, what's working all at once
  background (grass);
  startscreen();
  gamestart();
  drawscorekeeper();

  //this is the activation of the game. press space bar to play
  if ( keyPressed == true) {
    if (key == ' ') {
      gamestart = true;
    }
  }
  //once the game starts, the beginning screen is no longer displayed
  if ( gamestart==true) {
    startscreen = false;
  }

  //if the snake "eats" the apple image then it'll grown and the apple resets location
  if ( dist(food.x, food.y, snake.x.get(0), snake.y.get(0)) < snake.sz ) {
    food.reset();
    snake.snakegrow();
  }
  //this is to keep the score updated with the length of the snake as it goes
  if (snake.lenth > scorekeeper) {
    scorekeeper = snake.lenth;
  }
  //if the snake resets, the scorekeeper will follow
}
//if the game is true (so it started) then the snake will appear and you start playing
void gamestart() {
  if (gamestart == true) {
    snake.move();
    snake.display();
    food.display();
  }
}

//drawing the score keeper
void drawscorekeeper() {
  fill(#226427);
  textSize(20);
  //this is just what the current length of it is it changes with the snake
  text("SCORE:" + snake.lenth, 90, 30);
  textSize(20);
  //the all time highscore which doesn't refresh with the snake
  text("HIGH SCORE:" + scorekeeper, 400, 30);
}
//this is what the startscreen will display, this screen will become untrue and dissappear after pressing space
void startscreen() {
  if (startscreen == true) {
    background (grass);
    textSize(50);
    fill(#7D4CEA);
    text("SNAKE!", width/2-100, height/2);
    textSize(20);
    fill(250);
    text("press space to start", width/2 -100, height/2 +50);
  }
}

//the direction keys being pressed will change the direction which will be tested and them move the snake particles
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

