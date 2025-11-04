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



//Assets
static public PImage teamLogo;
static public PImage gameLogo;
static public PImage playerImg; 
static public PFont font;




void setup(){
    player = new Human("Sara",35,200,200);
    library = new Button(580,340,90,90,"AOK. Library");
    RAC = new Button(790,800,80,80,"RAC");
    Chesapeake = new Button(930,240,70,70,"Chesapeake\n Hall");
    Commons = new Button(700,540,60,60,"The\n Commons");
    ILSB = new Button(780,630,90,70,"Inter\n Disciplinary\n life sciences\n building");
    uniCenter = new Button(550,650,73,80,"University\n center");

    fullScreen();
    loadAssets(); 
    currentScene = "startup";

}

void draw(){
    drawScene(currentScene); 
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