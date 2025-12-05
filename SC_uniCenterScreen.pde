void uniCenter(){
    returnToCampus.display();
    ucParty.display();

    image(ucSceneBG, 0,0, width, height-130);
    
    
    player.displayPlayer();
    player.move();


    if(ucParty.isClicked() && currentScene == "uniCenter"){
        energyBar.changeEnergy(-70);
        happinessBar.changeHappiness(30);
        clearTask("Have \n Fun!");
    }

    if(returnToCampus.isClicked()){
        currentScene = "campus";
        player.x = int(width/3.2) - 60;
        player.y = int(height/2.0) - 60;
    }
}