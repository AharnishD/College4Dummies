void campus(){
    safeBackground(); // ask me what this does if u dont undertsand.

    player.move();
    player.displayPlayer();

    if(library.isClicked()){
        currentScene = "library";
    }
    library.display();

    if(RAC.isClicked()){
        currentScene = "RAC";
    }
    RAC.display();

    if(Chesapeake.isClicked()){
        currentScene = "dorm";
        returnToCampus.display();
    }
    Chesapeake.display();


    if(Commons.isClicked()){
        currentScene = "commons";
        returnToCampus.display();
    }    
    Commons.display();
    
    if(ILSB.isClicked()){
        currentScene = "classLocation";
        returnToCampus.display();
    }
    ILSB.display();

    if(uniCenter.isClicked()){
        currentScene = "unicenter";
        returnToCampus.display();
    }
    uniCenter.display();

    if(ENGR.isClicked()){
        currentScene = "ENGR";
        returnToCampus.display();
    }
    ENGR.display();

    if(wellness.isClicked()){
        currentScene = "wellness";
    }
    wellness.display();

    if(trueGrits                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         .isClicked()){
        currentScene = "diningHall";
    }
    trueGrits.display();
}


void libraryBackground(){
    safeBackground();
    player.displayPlayer();
    player.move();
    textAlign(CENTER,CENTER);
    textSize(30);
    fill(255);
    text("Welcome to the livrartyy", width/2,height/2);
    returnToCampus.display();
}



void gym(){
    safeBackground();
    player.displayPlayer();
    player.move();
    textAlign(CENTER,CENTER);
    textSize(30);
    fill(255);
    text("Welcome to the gym", width/2,height/2);
    returnToCampus.display();
}


void dorm(){
    safeBackground();
    player.displayPlayer();
    player.move();
    textAlign(CENTER,CENTER);
    textSize(30);
    fill(255);
    text("Welcome to your dorm", width/2,height/2);
    returnToCampus.display();
}


void commons(){
    safeBackground();
    player.displayPlayer();
    player.move();
    textAlign(CENTER,CENTER);
    textSize(30);
    fill(255);
    text("Welcome to the commons", width/2,height/2);
    returnToCampus.display();
}


void classLocation(){
    safeBackground();
    player.displayPlayer();
    player.move();
    textAlign(CENTER,CENTER);
    textSize(30);
    fill(255);
    text("Welcome to the Comp101", width/2,height/2);
    returnToCampus.display();

}


void uniCenter(){
    safeBackground();
    player.displayPlayer();
    player.move();
    textAlign(CENTER,CENTER);
    textSize(30);
    fill(255);
    text("Welcome to the uni center", width/2,height/2);
    returnToCampus.display();
}


void disc(){
    safeBackground();
    player.displayPlayer();
    player.move();
    textAlign(CENTER,CENTER);
    textSize(30);
    fill(255);
    text("Welcome to the your discussion", width/2,height/2);
    returnToCampus.display();

}


void wellness(){
    safeBackground();
    player.displayPlayer();
    player.move();
    textAlign(CENTER,CENTER);
    textSize(30);
    fill(255);
    text("Welcome to the wellness center", width/2,height/2);
    returnToCampus.display();

}


void trueGrits(){
    safeBackground();
    player.displayPlayer();
    player.move();
    textAlign(CENTER,CENTER);
    textSize(30);
    fill(255);
    text("Welcome to the dining hall", width/2,height/2);
    returnToCampus.display();
}

String directions = "Use [W] [A] [S] [D] and the [ARROW] keys to move around.\nMove your player to a location and click [SPACE] to enter.\nIn each location you can chose an option to change your stats.\nStsts are Health, Energy, Money, and Grade.\nThere are random \"chalenges\" that you need to randomly compleate.\nyou need to survie 15 weeks, if any stats hits 0..."; 

void directions(){
    background(0);
    player.displayPlayer();
    player.move();
    textAlign(CENTER,CENTER);
    textFont(font);
    textSize(30);
    fill(255);
    text(directions, width/2, 170);
    textSize(60);
    fill(100,0,0);
    text("You Fail", width/2, 300); 
    start.display();
}

