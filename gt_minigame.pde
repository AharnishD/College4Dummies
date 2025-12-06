int numStars = 3;   // ← CHANGE THIS NUMBER FOR MORE/FEWER STARS

float playerX;
float playerY;
float playerSize = 60;

float[] starX;
float[] starY;
float[] starSpeed;
float starSize = 30;

int gtScore = 0;
int misses = 0;



// Call this once when you switch into the minigame
void initGtMinigame() {
  playerX = width / 2;
  playerY = height - 50;

  starX = new float[numStars];
  starY = new float[numStars];
  starSpeed = new float[numStars];

  for (int i = 0; i < numStars; i++) {
    resetStar(i);
  }
}

// Call this repeatedly from your scene manager
void gtMinigame() {
  background(20, 20, 40);

  drawPlayer();

  for (int i = 0; i < numStars; i++) {
    drawStar(i);

    starY[i] += starSpeed[i];

    // Caught?
    if (dist(playerX, playerY, starX[i], starY[i]) < (playerSize/2 + starSize/2)) {
      gtScore++;
      resetStar(i);
    }

    // Missed?
    if (starY[i] > height) {
      misses++;
      resetStar(i);
    }
  }

  drawHUD();

  if (misses >= 10) {
    gameOver();
    //noLoop();  // stop updating if you want
    currentScene = "classLocation";
  }
  if (gtScore == 20) {
    currentScene = "classLocation";
  }
}

void drawPlayer() {
  fill(100, 200, 255);
  ellipse(playerX, playerY, playerSize, playerSize);

  if (keyPressed) {
    if (key == 'a')  playerX -= 10;
    if (key == 'd') playerX += 10;
  }

  playerX = constrain(playerX, playerSize/2, width - playerSize/2);
}

void drawStar(int i) {
  fill(255, 220, 0);
  ellipse(starX[i], starY[i], starSize, starSize);
}

void drawHUD() {
  fill(255);
  textSize(20);
  text("Score: " + gtScore, 10, 25);
  text("Misses: " + misses + "/10", 10, 50);
}

void resetStar(int i) {
  starX[i] = random(starSize, width - starSize);
  starY[i] = random(-300, -50);
  starSpeed[i] = random(3, 7);
}

void gameOver() {
  background(0);
  fill(255, 100, 100);
  textSize(50);
  textAlign(CENTER);
  text("GAME OVER", width/2, height/2 - 20);

  fill(255);
  textSize(30);
  text("Final Score: " + gtScore, width/2, height/2 + 30);

  if(gtScore >= 18){
    grade = 93;
  }else if(gtScore >= 16 && gtScore < 18){
    grade = 80;
  }else if(gtScore >= 14 && gtScore < 16){
    grade = 70;
  }else{
    grade = 60;
  }

  gtScore = 0;
  misses = 0;

}