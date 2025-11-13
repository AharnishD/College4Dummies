//Game state
static String currentScene;
static int startTime;
static int week = 1; 
int sec;

//Stats  //happy and energy can only be a max of 170
float happiness = 170;
int energy = 170;
int money;
float grade;

//Game player
Human player;
//Building Location Buttons
Button library;
Button RAC;
Button Chesapeake;
Button Commons; 
Button ILSB;
Button uniCenter;
Button ENGR;
Button wellness;
Button trueGrits;
Button returnToCampus;
Button start;

//player stats bars
PlayerStatBar happinessBar;
PlayerStatBar energyBar;


//Assets
static public PImage teamLogo;
static public PImage gameLogo;
static public PImage playerImg; 
static public PImage hotBar; 
static public PFont font;



void setup(){
    startTime = millis(); //This NEEDS to be first   
    fullScreen();
    loadAssets(); 
    initThings();
    currentScene = "startup";
}

void draw(){
    drawScene(currentScene); 
}


void initThings(){
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
    returnToCampus = new Button(int(width/13),height/13,90,90,"Exit");
    start = new Button(int(width/2-45),height-300,90,90,"Start"); 

    happinessBar = new PlayerStatBar(height-105, happiness,color(0,100,0));
    energyBar = new PlayerStatBar(height-65,energy,color(125,249,255));
}





private String changeSceneCheck = "aaaaaaaaaaaaaaaaaaaaaaa";
void drawScene(String current){
    updateUI();

    switch (current) {
    case "startup":
        startUpScreen();
        break;
    case "directions":
        directions();
        break;
    case "campus":
        campus();
        break;
    case "library":
        library();
        break;
    case "RAC":
        gym();
        break;
    case "dorm":
        dorm();
        break;
    case "commons":
        commons();
        break;
    case "classLocation":
        classLocation();
        break;
    case "uniCenter":
        uniCenter();
        break;
    case "engeneering":
        engineering();
        break;
    case "wellness":
        wellness();
        break;
    case "trueGrits":
        trueGrits();
        break;
    default:
        //This will never show
    }


    if(!(changeSceneCheck.equals(current))){   
       changeSceneCheck = current;
       background(0);
       drawUI();

       switch (current) {
        default:
            //This should never show.
        }
    }



}



void keyPressed(){

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

