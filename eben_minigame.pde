// Global variables
float y = 250;
float ySpeed = 0;
float obstacleX = 400;
boolean dead = false;
int ebenScore = 0;

void EbenMinigame() {
  currentScene = "minigame1";

  fullScreen();
  background(50);

  // Ground
  fill(100);
  rect(0, 280, 400, 20);

  // Game over screen
  if (dead) {
    fill(255);
    textSize(32);
    text("GAME OVER", 100, 150);
    text("Score: " + ebenScore, 130, 190);
    ebenScore = 0;
    currentScene = "classLocation";
    dead = false;
    obstacleX = 400;
  }

  // Gravity
  ySpeed += 0.75;
  y += ySpeed;

  // Land on ground
  if (y > 250) {
    y = 250;
    ySpeed = 0;
  }

  // Player
  fill(0, 255, 0);
  rect(50, y, 20, 20);

  // Obstacle movement
  obstacleX -= 5;
  if (obstacleX < -20) {
    obstacleX = 400;
    ebenScore++;
    if (ebenScore == 20) {
      dead = true;
    }
  }

  // Obstacle
  fill(255, 0, 0);
  rect(obstacleX, 260, 20, 20);

  // Collision detection
  if (obstacleX < 70 && obstacleX > 30 && y > 240) {
    if(ebenScore >= 18){
      grade = 93;
    }else if(ebenScore >= 16 && ebenScore < 18){
      grade = 80;
    }else if(ebenScore >= 14 && ebenScore < 16){
      grade = 70;
    }else{
      grade = 60;
    }
    dead = true;
  }

  // Score
  fill(255);
  text(ebenScore, 20, 30);
}

// Jump when space is pressed
void keyPressed() {
  if (key == ' ' && y == 250) {
    ySpeed = -12;
  }
}