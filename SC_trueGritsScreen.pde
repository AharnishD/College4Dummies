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
    }

    eatFood.display(); 
    if(eatFood.isClicked()){
        energyBar.changeEnergy(15);
        happinessBar.changeHappiness(10);
    }
    
}


