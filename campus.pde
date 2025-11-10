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

