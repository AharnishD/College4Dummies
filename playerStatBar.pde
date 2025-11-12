public class PlayerStatBar{

    int barLength = 200; 

    float value;
    color colorFull;
    color colorEmpty;
    float x;
    float y;

    public PlayerStatBar(float xLoc, float yLoc, int initValue, color full, color empty){
        this.value = initValue;
        this.colorFull = full;
        this.colorEmpty = empty;
        this.x = xLoc;
        this.y = yLoc; 
    }

    void drawBar(float value){
        fill(colorFull);
        rect(x, y, barLength/value, 30); 
        fill(colorEmpty); 
        rect(barLength/value, y, x-barLength/value, 30);
    }


    
}