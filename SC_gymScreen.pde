//draws the gym layout 

void gym(){

    returnToCampus.display();
    workout.display();

    image(gymBG, 0,0, width, height-130);

    player.displayPlayer();
    player.move();


    if(returnToCampus.isClicked()){
        currentScene = "campus";
        player.x = int(width/2) - 60;
        player.y = int(height/1.5) - 60;
    }
 
    if(workout.isClicked()){
        energyBar.changeEnergy(-20);
        happinessBar.changeHappiness(5);
        clearTask("Work \n Out");
    }
    exitDoor();
}