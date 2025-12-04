//Game state
String currentScene; //what ever this is is the scene that will draw on screen 
static  int startTime;  // the inital start time of the program after fully loading (in mili sec) NOT USED RN
static int week = 1; //1-15 
boolean miniGameRunning = false; // disables player movement etc if a mini game is running NOT USED RN
String[] toDoList = new String[8];  //this fills up with what is in the to do list for a player 

//Stats  //happy and energy can only be a max of 170
float happiness = 170; //health stat 
float energy = 170; //energy stat 
float money = 30.00; //money stat 
float grade = 100; //grade stat (0-100)

//Game player
Human player; //holds the current player object 
//buildings
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
Button nextWeek;


//building mechanics
Button commonsStudy;
Button commonsEat;

Button attendClass;

Button workout;

Button attendDiscussion;

Button eatFood;

Button sleepInDorm;
Button sleepInDorm2;
Button studyDorm;
Button studyDorm2;

Button studyLibrary;
Button vendingMachineLibrary;
Button vendingMachineLibrary1;
Button vendingMachineLibrary2;

Button ucParty;

//player stat bars
PlayerStatBar happinessBar;
PlayerStatBar energyBar;




//Misc Assets
    PImage teamLogo;
    PImage gameLogo;
    PImage playerImg; 
    PImage hotBar; 
    PFont font;

//Scene Assets
    PImage dormBG;
    PImage gymBG;
    PImage libraryBG;
    PImage ucSceneBG;
    PImage wcSceneBG;
    PImage trueGritsBG;
    PImage discBG;



//makes the environment while loading our assets and initializing our objects and sets the current scene
void setup(){
    startTime = millis(); //This NEEDS to be first   
    fullScreen();
    loadAssets(); 
    initThings();
    currentScene = "startup";
}

//draws our scene
void draw(){
    //runTimer();
    if(detectLoss()){
        currentScene = "lose";
    }
    drawScene(currentScene); 
}

//initalizes all of our objects
void initThings(){
    //character
    //I LOVE YOUUU
    player = new Human("Sara",35,200,200);

    //universeal exit button
    returnToCampus = new Button(int(width/18),height/13,100,100,"Exit");

    //initalizes enter building hitboxes 
    library = new Button(int(width/6),int(height/6.0),90,90,"AOK. Library");

    RAC = new Button(int(width/2),int(height/1.5),80,80,"RAC");

    Chesapeake = new Button(int(width/1.5),int(height/6.7),70,70,"Chesapeake\n Hall");

    Commons = new Button(width/2,int(height/2.5),60,60,"The\n Commons");

    ILSB = new Button(width/2,int(height/2.0),90,70,"Inter\n Disciplinary\n life sciences\n building");

    uniCenter = new Button(int(width/3.2),int(height/2.0),73,80,"University\n center");

    ENGR = new Button(int(width/7),int(height/2.0),80,80,"Engineering");

    wellness = new Button(int(width/1.5),int(height/3.7),70,50,"wellness\n center");

    trueGrits = new Button(int(width/1.35),int(height/5),60,60,"True\n Grits");


    //start button so the player can enter the game
    start = new Button(int(width/2-45),height/2,90,90,"Start"); 
    nextWeek = new Button(int(width/13),height/2,90,90,"Next Week");
    
    //player stats
    happinessBar = new PlayerStatBar(height-105, happiness,color(0,100,0));
    energyBar = new PlayerStatBar(height-65,energy,color(150,150,0));

    //mechanics 
    ucParty = new Button(int(width/1.8),int(height/1.8),90,90,"Have \n Fun!");

    commonsStudy = new Button(int(width/2.5),int(height/1.8),90,90,"Study");
    commonsEat = new Button(int(width/1.8),int(height/1.8),90,90,"Eat");

    attendClass = new Button(int(width/1.8),int(height/1.5),90,90,"Go To Class");

    workout = new Button(int(width/1.8),int(height/1.8),90,90,"Lift weights");

    attendDiscussion = new Button(int(width/1.8),int(height/1.8),90,90,"Go to Discussion");

    eatFood = new Button(int(width/1.8),int(height/1.8),90,90,"Go Eat");


    studyLibrary = new Button(int(width/1.8),int(height/1.8),90,90,"Study");

    //FOR DORM SCENE
    sleepInDorm = new Button((width - (int(width / 4.5))),int(height/4.8),width/6,(2 * height) / 6,"Go Sleep"); //done
    sleepInDorm2 = new Button(width/15,height-int((height/2.5)),int(width/4),height/6,"Go Sleep");
    studyDorm = new Button(width/2 - (width/7)/2,170,width/5,height/6,"Study"); //done
    studyDorm2 = new Button(width/2 - (width/6)/2,height - (height/9) - 280,width/5,height / 8,"Study"); //done

    vendingMachineLibrary = new Button(int(width/1.2),int(height/1.8),90,90,"Vending \n Machine");
    //vendingMachineLibrary1 = new Button(int(width/1.8),int(height/1.6),90,90,"Diet Coke");
    //vendingMachineLibrary2 = new Button(int(width/1.4),int(height/1.6),90,90,"White \n Monster");



    //From here onwards this is for generating textures
    
    //Dorm Rug
    for(int i = 0; i < 1200; i++){
        carpetXs[i] = random(0, width);             // chose random location within carpet horizontally
        carpetYs[i] = random(0, height -130);       // chose random location within carpet vertically
        strandLengths[i] = random(3, 7);            // random length of lines between 3-7 pixels
    }
}

//Uses a switch to have the the currentScene be drawn 
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
    case "engineering":
        engineering();
        break;
    case "wellness":
        wellness();
        break;
    case "trueGrits":
        trueGrits();
        break;
    //case "endWeekStats":
        //endWeekStats();
        //break;
    //case "lose":
        //deathScreen("[You Failed]");
        //break;
    default:
        //This will never show 
    }

    //This will detect when a scene is changed and draw the startup functions for the new scene 
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




//initalises the assets used in game so they do not need to be loaded later on 
void loadAssets(){
    //Misc Assets
    teamLogo = loadImage("Assets/teamLogo.png"); 
    gameLogo = loadImage("Assets/gameLogo.png");
    playerImg = loadImage("Assets/playerIMG.png");
    hotBar = loadImage("Assets/HD_HotBar.png");  
    font = createFont("Jersey10-Regular.ttf", 48);

    //Scene Assets
    dormBG = loadImage("Assets/DormScene.png");
    gymBG = loadImage("Assets/RAC_Scene.png");
    libraryBG = loadImage("Assets/libraryScene.png"); 
    ucSceneBG = loadImage("Assets/ucScene.png"); 
    wcSceneBG = loadImage("Assets/wcScene.png");
    trueGritsBG = loadImage("Assets/trueGritsScene.png");
    discBG = loadImage("Assets/discScene.png");
}

//stes a scenes BG without covering up UI etc 
void safeBackground(){
    fill(0);
    noStroke();
    rect(0,0,width,height-130);
}

//returns true if the player has any stats too low, returns fale otherwise 
boolean detectLoss(){
    if(happiness<=0) return true;
    if(energy<=0) return true;
    if(grade<=60) return true;
    return false;
}   