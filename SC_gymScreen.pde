void gym(){
    image(gymBG, 0,0, width, height-130);
    player.displayPlayer();
    player.move();
    textAlign(CENTER,CENTER);
    textSize(30);
    fill(255);
    text("Welcome to the gym", width/2,height/2);
    returnToCampus.display();

    if(returnToCampus.isClicked()){
        currentScene = "campus";
        player.x = int(width/2) - 60;
        player.y = int(height/1.5) - 60;
    }

    workout.display(); 
    if(workout.isClicked()){
        energyBar.changeEnergy(-20);
        happinessBar.changeHappiness(5);
        clearTask("Work \n Out");
    }


}