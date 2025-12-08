//draws the classroom layout 
void classLocation(){
    returnToCampus.display();
    attendClass.display();

    image(ilsbBG, 0,0, width, height-130);
    

    player.displayPlayer();
    player.move();


    if(returnToCampus.isClicked()){
        currentScene = "campus";
        player.x = int(width/2) - 60;
        player.y = int(height/2.0) - 60;
    }



    if(attendClass.isClicked()){
        energyBar.changeEnergy(-10);
        happinessBar.changeHappiness(-5);
        clearTask("Attend \n Class");
        
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

