
//  CONSTANTS
final int ORIGINAL_WIDTH = 120;
final int MIN_WIDTH = 8;          // Smallest possible target
final int SWEEPER_THICKNESS = 4;  // 4 pixle wide line
final int speed = 5;       // for speed of black bar
final int MARGIN = 20;     // Arena margin

int successes = 0;      // track successful hits so far

int gWidth = ORIGINAL_WIDTH;   // Green target width
int gStart;                    // Left X position of Green target

int arenaMin = MARGIN;                  // left bound of red 
int arenaMax = width - MARGIN;             // right bound of red

int lineX =  arenaMin + 2;     // sweeper x position
boolean movingRight = true;    // sweeper direction


 

void inDaGreen(){
    // makes sure its within the arena
    gWidth = min(gWidth,  arenaMax - arenaMin);
  
    // Random X and placed within the Red arena
    gStart = int(random(arenaMin, arenaMax - gWidth));
}

void greenBar(){
  fill(0,255,0);
  stroke(0);
  noStroke();
  rect(gStart, MARGIN, gWidth, height - 2*MARGIN);
}

void playArea(){
  background (255);
  // red rectangle in foreground no border and 20 pixle margins
  noStroke();
  fill(255,0,0);
  rect(MARGIN,  MARGIN,  width - 2*MARGIN,  height - 2*MARGIN);
}

void sweeper(){
// BOUNCE BACK AND FORTH
if (movingRight) {
  lineX += speed;
    if(lineX >= arenaMax - 2) {
      lineX = arenaMax - 2;
      movingRight = false;
    }
  } else {
  lineX -= speed;
    if (lineX <= arenaMin + 2){ 
      lineX = arenaMin +2;
      movingRight = true;
    }
}   
// Draw the sweeper
  pushStyle();
  stroke(0);
  strokeWeight(SWEEPER_THICKNESS);
  line(lineX,  MARGIN, lineX, height - MARGIN); // create the vertical sweeper bar
  popStyle();
}

boolean onGreen(){
  int half = SWEEPER_THICKNESS / 2;
  int sweeperLeft = lineX - half;
  int sweeperRight = lineX + half;
  int greenLeft = gStart;
  int greenRight = gStart + gWidth;
  return sweeperRight >= greenLeft && sweeperLeft <= greenRight;
}
// Press SPACE while in the green and target changes position and shrinks; resets if missed
void keyPressed(){
  if (key == ' '){
      if (onGreen()){
        successes++;
        gWidth = max(gWidth / 2, MIN_WIDTH);
        inDaGreen(); // new random position with smaller width
      }else{
        if (successes >= 1) {
          // after one success, a miss resets to original width
          gWidth = ORIGINAL_WIDTH;
          inDaGreen();
        }
      }
  }
}