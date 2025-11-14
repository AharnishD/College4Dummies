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
    }

    commonsStudy.display(); 
    if(commonsStudy.isClicked()){
        energyBar.changeEnergy(-10);
    }
    commonsEat.display();
    if(commonsEat.isClicked()){
        energyBar.changeEnergy(10);
    }
}


