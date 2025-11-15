public void commons(){
    safeBackground();
    player.displayPlayer();
    player.move();
    textAlign(CENTER,CENTER);
    textSize(30);
    fill(255);
    text("Welcome to the commons", width/2,height/2);

    returnToCampus.display(); 
    if(returnToCampus.isClicked()){
        currentScene = "campus";
        player.x = int(width/2) - 60;
        player.y = int(height/2.5) - 60;
    }

    commonsStudy.display(); 
    if(commonsStudy.isClicked()){
        energyBar.changeEnergy(-10);
        clearTask("Commons \n Study"); 
    }
    commonsEat.display();
    if(commonsEat.isClicked()){
        energyBar.changeEnergy(10);
        clearTask("Commons \n Eat"); 
    }
}


