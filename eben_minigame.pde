

void EbenMinigame() {
  currentScene = "minigame1";
  float y = 250;
  float ySpeed = 0;
  float obstacleX = 400;
  // Game
  boolean dead = false;
  int score = 0;


  //safeBackground();
  background(50);
  // the ground
  fill(100);
  rect(0, 280, 400, 20);
  
  if (dead) {
    fill(255);
    textSize(32);
    text("GAME OVER", 100, 150);
    text("Score: " + score, 130, 190);
    return;
  }
  
  // gravity
  ySpeed += 0.75;
  y += ySpeed;
  
  // what happens when you land on ground
  if (y > 250) {
    y = 250;
    ySpeed = 0;
  }
  
  // Player
  fill(0, 255, 0);
  rect(50, y, 20, 20);
  
  obstacleX -= 5;
  if (obstacleX < -20) {
    obstacleX = 400;
    score++;
    if (score >= 5)
    dead = true;
 
  }
  
  fill(255, 0, 0);
  rect(obstacleX, 260, 20, 20);
  
  if (obstacleX < 70 && obstacleX > 30 && y > 240) {
    dead = true;
  }
  
  // score
  fill(255);
  text(score, 20, 30);

  if (y == 250) ySpeed = -12;
}
