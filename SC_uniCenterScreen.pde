//draws the uni center layout 

void uniCenter(){
    //displays buttons
    returnToCampus.display();
    ucParty.display();
    //background image for the uni center
    image(ucSceneBG, 0,0, width, height-130);
    
    //moves character and displays them over backgound
    player.displayPlayer();
    player.move();

    //if the party button is clicked, decrease energy, increase happiness, and clear task
    if(ucParty.isClicked() && currentScene == "uniCenter"){
        energyBar.changeEnergy(-70);
        happinessBar.changeHappiness(30);
        clearTask("Have \n Fun!");
    }
    //if the return to campus button is clicked, go back to campus and set player position
    if(returnToCampus.isClicked()){
        currentScene = "campus";
        player.x = int(width/3.2) - 60;
        player.y = int(height/2.0) - 60;
    }
    //to exit the uni center
    exitDoor();
}