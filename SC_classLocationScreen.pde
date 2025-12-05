void classLocation(){
    returnToCampus.display();
    attendClass.display();

    image(ilsbBG, 0,0, width, height-130);
    

    player.displayPlayer();
    player.move();


    if(returnToCampus.isClicked()){
        currentScene = "campus";
        player.x = int(width/2) - 60;
        player.y = int(height/2.0) - 60;
    }



    if(attendClass.isClicked()){
        energyBar.changeEnergy(-10);
        happinessBar.changeHappiness(-5);
        clearTask("Attend \n Class");
        randomMinigames();
    }
}

