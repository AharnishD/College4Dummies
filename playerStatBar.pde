public class PlayerStatBar{

    int barLength = 170; 

    float value;
    color colorFull;
    color colorEmpty;
    int x;
    int y;


    public PlayerStatBar (int initXLoc, int initYLoc, float initValue, color initColorFull){
        this.value = initValue;
        this.colorFull = initColorFull;
        this.colorEmpty = color(100,0,0);
        this.x = initXLoc;
        this.y = initYLoc;
    }

    void drawBar(float value){
        rectMode(CORNER);
        noStroke();    
        fill(colorFull); 
        rect(x, y, barLength/value, 30); 
        fill(colorEmpty); 
        rect(x+barLength/value, y, barLength - barLength/value, 30);
    }

}