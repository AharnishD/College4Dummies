public class PlayerStatBar{

    int barLength = 200; 

    float value;
    color colorFull;
    color colorEmpty;
    int x;
    int y;


    public PlayerStatBar (int initXLoc, int initYLoc, int initValue, color full, color empty){
        this.value = initValue;
        this.colorFull = full;
        this.colorEmpty = empty;
        this.x = initXLoc;
        this.y = initYLoc;
    }

    void drawBar(float value){


        fill(colorFull); 
        rect(x,y,30,30);
        //rect(x, y, barLength/value, 30); 
        //fill(colorEmpty); 
        //rect(barLength/value, y, x-barLength/value, 30);
    }


    
}