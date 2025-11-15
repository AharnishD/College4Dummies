void trueGrits(){
    safeBackground();
    player.displayPlayer();
    player.move();
    textAlign(CENTER,CENTER);
    textSize(30);
    fill(255);
    text("Welcome to the dining hall", width/2,height/2);
    returnToCampus.display();

    if(returnToCampus.isClicked()){
        currentScene = "campus";
        player.x = int(width/1.35) + 60;
        player.y = int(height/5);
    }

    eatFood.display(); 
    if(eatFood.isClicked()){
        energyBar.changeEnergy(15);
        happinessBar.changeHappiness(10);
        clearTask("Eat"); 
    }
    
}


