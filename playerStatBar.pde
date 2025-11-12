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
        rect(width/8, y, redBarSize, 30);

        fill(colorFull); 
        rect(width/8, y,value, 30); 
    }

}