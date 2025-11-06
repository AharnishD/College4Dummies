void campus(){
    safeBackground(); // ask me what this does if u dont undertsand.

    player.move();
    player.display();

    if(library.isClicked()){
        currentScene = "library";
    }
    library.display();

    if(RAC.isClicked()){
        currentScene = "RAC";
    }
    RAC.display();

    if(Chesapeake.isClicked()){
        currentScene = "RAC";
    }
    Chesapeake.display();


    if(Commons.isClicked()){
        currentScene = "RAC";
    }    
    Commons.display();
    
    if(ILSB.isClicked()){
        currentScene = "RAC";
    }
    ILSB.display();

    if(uniCenter.isClicked()){
        currentScene = "RAC";
    }
    uniCenter.display();

    if(ENGR.isClicked()){
        currentScene = "RAC";
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


void library(){
    safeBackground();
    textAlign(CENTER,CENTER);
    textSize(30);
    fill(255);
    text("Welcome to the livrartyy", width/2,height/2);
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
