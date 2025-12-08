//draws the classroom layout 
void classLocation(){
    //display buttons
    returnToCampus.display();
    attendClass.display();

    //background image for the ILSB classroom
    image(ilsbBG, 0,0, width, height-130);
    
    //moves character and displays them over backgound
    player.displayPlayer();
    player.move();

    //if the return to campus button is clicked, go back to campus and set player position
    if(returnToCampus.isClicked()){
        currentScene = "campus";
        player.x = int(width/2) - 60;
        player.y = int(height/2.0) - 60;
    }


    //if the attend class button is clicked, decrease energy and happiness and clear task
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
    //to exit the building
    exitDoor();
}

