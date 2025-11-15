void uniCenter(){
    safeBackground();
    player.displayPlayer();
    player.move();
    textAlign(CENTER,CENTER);
    textSize(30);
    fill(255);
    text("Welcome to the uni center", width/2,height/2);
    returnToCampus.display();

    ucParty.display();
    if(studyLibrary.isClicked()){
        energyBar.changeEnergy(-10);
        happinessBar.changeHappiness(-5);
        clearTask("Have \n Fun!");
    }

    if(returnToCampus.isClicked()){
        currentScene = "campus";
        player.x = int(width/3.2) - 60;
        player.y = int(height/2.0) - 60;
    }
}