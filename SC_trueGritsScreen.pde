//draws the true grits layout 

void trueGrits(){
    returnToCampus.display();
    eatFood.display(); 

    image(trueGritsBG, 0,0, width, height-130);

    player.displayPlayer();
    player.move();

    if(returnToCampus.isClicked()){
        currentScene = "campus";
        player.x = int(width/1.35) + 60;
        player.y = int(height/5);
    }

    if(eatFood.isClicked()){
        energyBar.changeEnergy(15);
        happinessBar.changeHappiness(10);
        clearTask("Eat"); 
    }
    exitDoor();
}


