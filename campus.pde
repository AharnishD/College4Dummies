void campus(){
    safeBackground(); // ask me what this does if u dont undertsand.

    player.move();
    player.display();

    library.display();

    if(library.isClicked()){
        currentScene = "library";
    }
    if(RAC.isClicked()){
        currentScene = "RAC";
    }

    RAC.display();
    Chesapeake.display();
    Commons.display();
    ILSB.display();
    uniCenter.display();
    ENGR.display();
    wellness.display();
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
