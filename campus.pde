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
        returnToCampus.display();
    }
    RAC.display();

    if(Chesapeake.isClicked()){
        currentScene = "RAC";
        returnToCampus.display();
    }
    Chesapeake.display();


    if(Commons.isClicked()){
        currentScene = "RAC";
        returnToCampus.display();
    }    
    Commons.display();
    
    if(ILSB.isClicked()){
        currentScene = "RAC";
        returnToCampus.display();
    }
    ILSB.display();

    if(uniCenter.isClicked()){
        currentScene = "RAC";
        returnToCampus.display();
    }
    uniCenter.display();

    if(ENGR.isClicked()){
        currentScene = "RAC";
        returnToCampus.display();
    }
    ENGR.display();

    if(wellness.isClicked()){
        currentScene = "RAC";
    }
    wellness.display();

    if(trueGrits                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         .isClicked()){
        currentScene = "RAC";
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


}


void dorm(){


}


void commons(){


}


void classLocation(){


}


void uniCenter(){


}


void disc(){


}


void wellness(){


}


void trueGrits(){


}

void exit(){
    campus();
}
