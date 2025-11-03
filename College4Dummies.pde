static String currentScene;

static public Human player;

static public PImage teamLogo;
static public PImage gameLogo;

void setup(){
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
    case "campus":
        println("Shit not done yet");
        break;
    default:
        println("Something went wrong");
}


}



void loadAssets(){
    teamLogo = loadImage("teamLogo.png"); 
    gameLogo = loadImage("gameLogo.png");
}