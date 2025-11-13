Button commonsStudy = new Button(int(width/6),int(height/4),90,90,"Study");


void commons(){
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
        changeEnergy(-10);
    }
}


