void dorm(){
    safeBackground();
    player.displayPlayer();
    player.move();
    textAlign(CENTER,CENTER);
    textSize(30);
    fill(255);
    text("Welcome to your dorm", width/2,height/2);
    returnToCampus.display();

    if(returnToCampus.isClicked()){
        currentScene = "campus";
    }

    sleepInDorm.display(); 
    sleepInDorm2.display();
    if(sleepInDorm.isClicked() || sleepInDorm2.isClicked()){
        changeEnergy(999);
        changeHappiness(999);
    }
    dormBed();
}      
   