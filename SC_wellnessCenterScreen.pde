void wellness(){
    returnToCampus.display();
    wcGetHealthy.display();

    image(wcSceneBG, 0,0, width, height-130);

    player.displayPlayer();
    player.move();


    if(returnToCampus.isClicked()){
        currentScene = "campus";
        player.x = int(width/1.5) - 60;
        player.y = int(height/3.7) - 60;
    }

    if(wcGetHealthy.isClicked()){
        happinessBar.changeHappiness(45);
        clearTask("You're \n Sick!");
    }

}