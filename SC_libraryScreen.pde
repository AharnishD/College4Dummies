void library(){
    safeBackground();
    player.displayPlayer();
    player.move();
    textAlign(CENTER,CENTER);
    textSize(30);
    fill(255);
    text("Welcome to the livrartyy", width/2,height/2);
    returnToCampus.display();

    if(returnToCampus.isClicked()){
        currentScene = "campus";
    }

    studyLibrary.display(); 
    if(studyLibrary.isClicked()){
        energyBar.changeEnergy(-10);
        happinessBar.changeHappiness(-5);
        clearTask("Study \n Library");

    }



}