public class PlayerStatBar{

    int barLength = 170; 

    float value;
    color colorFull;
    color colorEmpty;
    int y;


    public PlayerStatBar (int initYLoc, float initValue, color initColorFull){
        this.value = initValue;
        this.colorFull = initColorFull;
        this.colorEmpty = color(100,0,0);
        this.y = initYLoc;
    }

    void drawBar(float value){
        float redBarSize = barLength;
        fill(colorEmpty); 
        rect(190, y, redBarSize, 30);

        fill(colorFull); 
        rect(190, y,value, 30); 
    }
}

void changeHappiness(int amount){
    happiness += amount;

    if(happiness<0){
        happiness=0;
    }else if(happiness>170){
        happiness = 170;
    }
    delay(200);
}

void changeEnergy(int amount){
    energy += amount;

    if(energy<0){
        energy=0;
    }else if(energy>170){
        energy = 170;
    }
    delay(200);
}