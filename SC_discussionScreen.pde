//draws the engenerring building layout 
void engineering(){
    //display buttons
    returnToCampus.display();
    attendDiscussion.display(); 
    
    //background image for the engineering building
    image(discBG, 0,0, width, height-130);

    //moves character and displays them over backgound
    player.displayPlayer();
    player.move();

    //if the return to campus button is clicked, go back to campus and set player position
    if(returnToCampus.isClicked()){
        currentScene = "campus";
        player.x = int(width/7) - 60;
        player.y = int(height/2.0) - 60;
    }

    //if the attend discussion button is clicked, decrease energy and happiness and clear task
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
    //to exit the building
    exitDoor();
}