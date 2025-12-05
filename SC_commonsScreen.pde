public void commons(){
    returnToCampus.display();
    commonsEat.display();
    commonsStudy.display();

    image(commonsBG, 0,0, width, height-130); 

    player.displayPlayer();
    player.move();


     
    if(returnToCampus.isClicked()){
        currentScene = "campus";
        player.x = int(width/2) - 60;
        player.y = int(height/2.5) - 60;
    }

    if(commonsStudy.isClicked()){
        energyBar.changeEnergy(-15);
        happinessBar.changeHappiness(-5);
        clearTask("Commons \n Study"); 
    }
    if(commonsEat.isClicked()){
        energyBar.changeEnergy(13);
        happinessBar.changeHappiness(7);
        clearTask("Commons \n Eat"); 
    }
}


