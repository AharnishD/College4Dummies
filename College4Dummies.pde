//Game state
static String currentScene;

//Game player
Human player;
//Location buttons
Button library;
Button RAC;
Button Chesapeake;
Button Commons; 
Button ILSB;
Button uniCenter;
Button ENGR;
Button wellness;
Button trueGrits;



//Assets
static public PImage teamLogo;
static public PImage gameLogo;
static public PImage playerImg; 
static public PFont font;




void setup(){
    player = new Human("Sara",35,200,200);

    library = new Button(int(width/3),int(height/6.0),90,90,"AOK. Library");
    RAC = new Button(int(width/2),int(height/1.5),80,80,"RAC");
    Chesapeake = new Button(int(width/1.5),int(height/6.7),70,70,"Chesapeake\n Hall");
    Commons = new Button(width/2,int(height/2.5),60,60,"The\n Commons");
    ILSB = new Button(width/2,int(height/2.0),90,70,"Inter\n Disciplinary\n life sciences\n building");
    uniCenter = new Button(int(width/3.2),int(height/2.0),73,80,"University\n center");
    ENGR = new Button(int(width/4.2),int(height/2.0),80,80,"Engineering");
    wellness = new Button(int(width/1.5),int(height/3.7),70,50,"wellness\n center");
    trueGrits = new Button(int(width/1.35),int(height/5),60,60,"True\n Grits");

    fullScreen();
    loadAssets(); 
    currentScene = "startup";

}

void draw(){
    drawScene(currentScene); 
    drawUI();
}



void drawScene(String current){

    switch (current) {
    case "startup":
        startUpScreen();
        break;
    case "dorm":
        campus();
        break;
    default:
        println("Something went wrong");
}


}



void loadAssets(){
    teamLogo = loadImage("teamLogo.png"); 
    gameLogo = loadImage("gameLogo.png");
    playerImg = loadImage("playerIMG.png");
    font = createFont("SixtyfourConvergence-Regular-VariableFont_BLED,SCAN,XELA,YELA.ttf", 48);
}