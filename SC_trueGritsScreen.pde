//draws the true grits layout 

void trueGrits(){
    //displays buttons
    returnToCampus.display();
    eatFood.display(); 
    //background image for the true grits
    image(trueGritsBG, 0,0, width, height-130);
    //moves character and displays them over backgound
    player.displayPlayer();
    player.move();
    //if the return to campus button is clicked, go back to campus and set player position
    if(returnToCampus.isClicked()){
        currentScene = "campus";
        player.x = int(width/1.35) + 60;
        player.y = int(height/5);
    }
    //if the eat button is clicked, increase energy and happiness and clear task
    if(eatFood.isClicked()){
        energyBar.changeEnergy(15);
        happinessBar.changeHappiness(10);
        clearTask("Eat"); 
    }
    //to exit the building
    exitDoor();
}


