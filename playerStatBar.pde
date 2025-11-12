public class PlayerStatBar{

    int barLength = 200; 

    float value;
    color colorFull;
    color colorEmpty;
    int x;
    int y;


    public PlayerStatBar (int initXLoc, int initYLoc, float initValue){
        this.value = initValue;
        this.colorFull = color(0,100,0);
        this.colorEmpty = color(100,0,0);
        this.x = initXLoc;
        this.y = initYLoc;
    }

    void drawBar(float value){
        fill(colorFull); 
        rect(x, y, barLength/value, 30); 
        fill(colorEmpty); 
        rect(barLength/value, y, x-barLength/value, 30);
    }

}