public class Button {
    int x, y, w, h;
    String label;
    color baseColor, hoverColor, textColor;

    Button(int x, int y, int w, int h, String label){
        this.x = x;
        this.y = y;
        this.w = w;
        this.h = h;
        this.label = label;
        baseColor = color(200);
        hoverColor = color(180);
        textColor = color(0);
    }

    void display(){
        if(isHover()){
            fill(hoverColor);
            //if(isClicked()){
                //println("yay");
            //}
        } else {
            fill(baseColor);
        }
        rect(x, y, w, h);

        fill(textColor);
        textAlign(CENTER, CENTER);
        textSize(7);
        text(label, x + w/2, y + h/2);
    }


    boolean isHover(){
        return player.x + 50 > x && player.x < x + w && player.y > y - 50 && player.y < y + h;
    }

    boolean isClicked(){
        return isHover() && mousePressed;
    }
}

