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
    returnToCampus = new Button(int(width/13),height/13,90,90,"Exit");
    start = new Button(int(width/2-45),height-300,90,90,"Start");


    fullScreen();
    loadAssets(); 
    currentScene = "startup";
}

void draw(){
    println(frameRate);
    drawScene(currentScene); 
}


private String changeSceneCheck = "suck me balls";

void drawScene(String current){

    updateUI();

    switch (current) {
    case "startup":
        startUpScreen();
        break;
    case "directions":
        directions();
        if(start.isClicked()){
            currentScene = "dorm";
        }
        break;
    case "campus":
        campus();
        break;
    case "library":
        libraryBackground();
        if(returnToCampus.isClicked()){
            currentScene = "campus";
        }
        break;
    case "RAC":
        gym();
        if(returnToCampus.isClicked()){
            currentScene = "campus";
        }
        break;
    case "dorm":
        dorm();
        if(returnToCampus.isClicked()){
            currentScene = "campus";
        }
        break;
    case "commons":
        commons();
        if(returnToCampus.isClicked()){
            currentScene = "campus";
        }
        break;
    case "classLocation":
        classLocation();
        if(returnToCampus.isClicked()){
            currentScene = "campus";
        }
        break;
    case "uniCenter":
        uniCenter();
        if(returnToCampus.isClicked()){
            currentScene = "campus";
        }
        break;
    case "ENGR":
        disc();
        if(returnToCampus.isClicked()){
            currentScene = "campus";
        }
        break;
    case "wellness":
        wellness();
        if(returnToCampus.isClicked()){
            currentScene = "campus";
        }
        break;
    case "trueGrits":
        trueGrits();
        if(returnToCampus.isClicked()){
            currentScene = "campus";
        }
        break;
    /*case "miniGame":
        playArea();
        greenBar();
        sweeper();
        break;*/
    default:

    }

    /*This is to check to see if a scene changes. Basicly a change scene listener.
    Every frame, it will check to see if the scene string name is equal to the current svaed one,
    if its difrent, it will trigger the one time setup calls for whatever is the new scene
    to prevent lag. This is calls such as loading assets and graphics*/ 
    if(!(changeSceneCheck.equals(current))){   
       changeSceneCheck = current;
       background(0);
       drawUI();

       switch (current) {
        case "miniGame":
            //TODO: Fix!
            //inDaGreen(); 
            //gStart = int(random(arenaMin, arenaMax - gWidth));
            break;
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
