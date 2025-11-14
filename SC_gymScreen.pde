void gym(){
    safeBackground();
    player.displayPlayer();
    player.move();
    textAlign(CENTER,CENTER);
    textSize(30);
    fill(255);
    text("Welcome to the gym", width/2,height/2);
    returnToCampus.display();

    if(returnToCampus.isClicked()){
        currentScene = "campus";
    }

    workout.display(); 
    if(workout.isClicked()){
        energyBar.changeEnergy(-20);
        happinessBar.changeHappiness(5);
        clearTask("Work \n Out");
    }


}