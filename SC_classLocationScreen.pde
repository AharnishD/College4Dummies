void classLocation(){
    safeBackground();
    player.displayPlayer();
    player.move();
    textAlign(CENTER,CENTER);
    textSize(30);
    fill(255);
    text("Welcome to the Comp101", width/2,height/2);
    returnToCampus.display();

    if(returnToCampus.isClicked()){
        currentScene = "campus";
        player.x = int(width/2) - 60;
        player.y = int(height/2.0) - 60;
    }



    attendClass.display(); 
    if(attendClass.isClicked()){
        energyBar.changeEnergy(-10);
        happinessBar.changeHappiness(-5);
        clearTask("Attend \n Class");
        randomMinigames();
    }
}

