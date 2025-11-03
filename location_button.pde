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
        text(label, x + w/2, y + h/2);
    }

    //boolean isHover(){
        //return mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h;
    //}
    boolean isHover(){
        return p1.x > x && p1.x < x + w && p1.y > y && p1.y < y + h;
    }

    boolean isClicked(){
        return isHover() && mousePressed;
    }

    int getX(){
        return x;
    }
    int getY(){
        return y;
    }
}

