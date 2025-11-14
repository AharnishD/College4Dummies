//player stat bar object
public class PlayerStatBar{
    //instance variables
    int barLength = 170; 
    float value;
    color colorFull;
    color colorEmpty;
    int y;

    //constructor
    public PlayerStatBar (int initYLoc, float initValue, color initColorFull){
        this.value = initValue;
        this.colorFull = initColorFull;
        this.colorEmpty = color(100,0,0);
        this.y = initYLoc;
    }

    //draws the stat bar and allows it to reflect the state of player
    void drawBar(float value){
        float redBarSize = barLength;
        fill(colorEmpty); 
        rect(220, y, redBarSize, 30);

        fill(colorFull); 
        rect(220, y,value, 30); 
    }

    //actually changes the happiness stat 
    void changeHappiness(int amount){
        happiness += amount;

        if(happiness<0){
            happiness=0;
        }else if(happiness>170){
            happiness = 170;
        }
        delay(200);
    }

    //actually changes the energy stat
    void changeEnergy(int amount){
        energy += amount;

        if(energy<0){
            energy=0;
        }else if(energy>170){
            energy = 170;
        }
        delay(200);
    }
}






/// universal function to redraw desk with given floats ////


void drawDesk(float deskX, float deskY, boolean papersOnRight) {
  
  // size of desk based on the current sketch size
  float deskWidth = width / 6.0;
  float deskHeight = height / 9.0;
  
  // Desk
  stroke(#957627); // lighter brown border for desks
  strokeWeight(2); // stroke weight of 2 for bolder contrast
  fill(#6A541D);   // brownish color for wooden desk look
  rect(deskX, deskY, deskWidth, deskHeight);
  
  // papers on desk
  fill(255);
  strokeWeight(1);
  stroke(80);
  
  // which side of desk the papers appear on
  float paperBaseX;
  if (papersOnRight) {
    paperBaseX = deskX + deskWidth * 0.7; // sets papers to the right
  } else {
    paperBaseX = deskX + deskWidth / 10.0; // sets papers to the left
  }
  
  float paperBaseY = deskY + deskHeight / 10.0; // set veritical position on the desk
  float paperW = deskWidth / 6.0; // sets paper width
  float paperH = deskHeight / 2.0; // sets paper height
  
  // paper stacks
  //-----X------------------Y--------------Width------Height--//
  rect( paperBaseX,       paperBaseY,       paperW,   paperH);
  rect( paperBaseX + 5,   paperBaseY + 3,   paperW,   paperH);
  rect( paperBaseX + 10,  paperBaseY + 6,   paperW,   paperH);
  
}