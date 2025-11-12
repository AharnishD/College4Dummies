void campus(){
    safeBackground(); 

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
        currentScene = "uniCenter";
        returnToCampus.display();
    }
    uniCenter.display();

    if(ENGR.isClicked()){
        currentScene = "engeneering";
        returnToCampus.display();
    }
    ENGR.display();

    if(wellness.isClicked()){
        currentScene = "wellness";
    }
    wellness.display();

    if(trueGrits                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         .isClicked()){
        currentScene = "trueGrits";
    }
    trueGrits.display();
}