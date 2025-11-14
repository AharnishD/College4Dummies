//button class
public class Button {
    //instance variables for Button class
    int x, y, w, h;
    String label,ogLabel;
    color baseColor, hoverColor, textColor;

    //constructor 
    Button(int x, int y, int w, int h, String label){
        this.x = x;
        this.y = y;
        this.w = w;
        this.h = h;
        this.label = label;
        this.ogLabel = label;
        baseColor = color(200);
        hoverColor = color(180);
        textColor = color(0);
    }

    //displays button with animated features
    void display(){
        if(isHover()){
            fill(hoverColor);
            textSize(20);
            label = "enter";
        } else {
            textSize(10);
            label = ogLabel;
            fill(baseColor);
        }
        //draws the button you're seeing on screen
        rect(x, y, w, h);

        //label for button
        fill(textColor);
        textAlign(CENTER, CENTER);
        text(label, x + w/2, y + h/2);
    }

    //checks to see if the player is hovering over a button
    boolean isHover(){
        return player.x + 50 > x && player.x < x + w && player.y > y - 50 && player.y < y + h;
    }

    //checks to see if the button is clicked
    boolean isClicked(){
        return isHover() && mousePressed;
    }


//adjusts happiness based on what the player does in game
public void changeHappiness(int amount){
    happiness += amount;

    if(happiness<0){
        happiness=0;
    }else if(happiness>170){ //makes sure the value of happiness doesn't exceed 100%
        happiness = 170;
    }

    delay(200);
}

//adjusts energy based on what the player does in game
public void changeEnergy(int amount){
    energy += amount;

    if(energy<0){
        energy=0;
    }else if(energy>170){ //makes sure the value of energy doesn't exceed 100%
        energy = 170;
    }

    delay(200);
    }
}
