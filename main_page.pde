Human p1;
Button library;
void setup(){
    size(800,800);
    p1 = new Human("Sara",18,100,200);
    library = new Button(200,200,100,100,"library");

}

void draw(){
    background(0);
    library.display();
    p1.display();
    p1.move();

    //println(p1.getX());
    //characterOnButton();
}

/*void characterOnButton(){
    if(p1.getX() == library.getX() && p1.getY() == library.getY()
        && p1.getX()+library.w == library.getX()+library.h){
        println("test");
    }
}*/

