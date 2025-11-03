//Game state
static String currentScene;

//Game players
static public Human player;

//Assets
static public PImage teamLogo;
static public PImage gameLogo;
static public PFont font;


void setup(){
    fullScreen();
    loadAssets(); 
    currentScene = "startup";
    //p1 = new Human("Aharnish",18,200,200);
    //library = new Button(400,400,100,100,"AOK. Library");

}

void draw(){
    drawScene(currentScene); 
    //background(0);
    //p1.display();
    //library.display();

}



void drawScene(String current){

    switch (current) {
    case "startup":
        startUpScreen();
        break;
    case "dorm":
        //println("Shit not done yet");
        dormRoomScreen();
        break;
    default:
        println("Something went wrong");
}


}



void loadAssets(){
    teamLogo = loadImage("teamLogo.png"); 
    gameLogo = loadImage("gameLogo.png");
    font = createFont("SixtyfourConvergence-Regular-VariableFont_BLED,SCAN,XELA,YELA.ttf", 48);
}