//Pirate Software ahhhhhh code :sob: 
//Game state
static String currentScene;
static int startTime;

//Stats 
int health;
int energy;
int money;
float grade;

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
static public PImage hotBar; 
static public PFont font;




void setup(){

    //This NEEDS to be first
    startTime = millis();

    player = new Human("Sara",35,200,200);

    library = new Button(int(width/6),int(height/6.0),90,90,"AOK. Library");
    RAC = new Button(int(width/2),int(height/1.5),80,80,"RAC");
    Chesapeake = new Button(int(width/1.5),int(height/6.7),70,70,"Chesapeake\n Hall");
    Commons = new Button(width/2,int(height/2.5),60,60,"The\n Commons");
    ILSB = new Button(width/2,int(height/2.0),90,70,"Inter\n Disciplinary\n life sciences\n building");
    uniCenter = new Button(int(width/3.2),int(height/2.0),73,80,"University\n center");
    ENGR = new Button(int(width/7),int(height/2.0),80,80,"Engineering");
    wellness = new Button(int(width/1.5),int(height/3.7),70,50,"wellness\n center");
    trueGrits = new Button(int(width/1.35),int(height/5),60,60,"True\n Grits");

    fullScreen();
    loadAssets(); 
    currentScene = "startup";

}

void draw(){
    drawScene(currentScene); 
}


private String changeSceneCheck = "nothing rn";

void drawScene(String current){


    switch (current) {
    case "startup":
        startUpScreen();
        break;
    case "campus":
        campus();
        break;
    case "library":
        library();
        break;
    default:
        println("Something went wrong");
    }

    //This is to check to see if a scene changes. Basicly a change scene listener 
    if(!(changeSceneCheck.equals(current))){   
       changeSceneCheck = current;
       background(0);
       drawUI();
    }


}


void loadAssets(){
    teamLogo = loadImage("Assets/teamLogo.png"); 
    gameLogo = loadImage("Assets/gameLogo.png");
    playerImg = loadImage("Assets/playerIMG.png");
    hotBar = loadImage("Assets/HD_HotBar.png"); 
    font = createFont("PixelifySans-VariableFont_wght.ttf", 48);
}

//stes a scenes GB without covering up UI etc 
void safeBackground(){
    fill(0);
    rect(0,0,width,height-130);
}
