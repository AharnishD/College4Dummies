//draws the engenerring building layout 
void engineering(){
    returnToCampus.display();
    attendDiscussion.display(); 
    

    image(discBG, 0,0, width, height-130);


    player.displayPlayer();
    player.move();


    if(returnToCampus.isClicked()){
        currentScene = "campus";
        player.x = int(width/7) - 60;
        player.y = int(height/2.0) - 60;
    }


    if(attendDiscussion.isClicked()){
        energyBar.changeEnergy(-30);
        happinessBar.changeHappiness(-20);
        clearTask("Attend \n Discussion"); 

        int gameChance = int(random(0,2));
        if (gameChance == 1){
            currentScene = "minigame2";
            gtMinigame();
        } else {
            currentScene = "minigame1";
            EbenMinigame();
        }
    }
    exitDoor();
}