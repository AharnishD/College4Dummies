void engineering(){
    safeBackground();
    player.displayPlayer();
    player.move();
    textAlign(CENTER,CENTER);
    textSize(30);
    fill(255);
    text("Welcome to the your discussion", width/2,height/2);
    returnToCampus.display();

    if(returnToCampus.isClicked()){
        currentScene = "campus";
        player.x = int(width/7) - 60;
        player.y = int(height/2.0) - 60;
    }

    attendDiscussion.display(); 
    if(attendDiscussion.isClicked()){
        energyBar.changeEnergy(-10);
        happinessBar.changeHappiness(-5);
        clearTask("Attend \n Discussion"); 
    }

}