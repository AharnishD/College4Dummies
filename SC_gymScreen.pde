//draws the gym layout 

void gym(){
    //displays buttons
    returnToCampus.display();
    workout.display();
    //background image for the gym
    image(gymBG, 0,0, width, height-130);
    //moves character and displays them over backgound
    player.displayPlayer();
    player.move();

    //if the return to campus button is clicked, go back to campus and set player position
    if(returnToCampus.isClicked()){
        currentScene = "campus";
        player.x = int(width/2) - 60;
        player.y = int(height/1.5) - 60;
    }
    //if the workout button is clicked, decrease energy and increase happiness and clear task
    if(workout.isClicked()){
        energyBar.changeEnergy(-20);
        happinessBar.changeHappiness(5);
        clearTask("Work \n Out");
    }
    //to exit the gym
    exitDoor();
}