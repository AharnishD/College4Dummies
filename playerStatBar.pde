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
        stroke(0);
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
void spendMoney(float amount){
    money += amount;
    if(money < 0.00){
        money = 0.00;
    }
    delay(200);
}







