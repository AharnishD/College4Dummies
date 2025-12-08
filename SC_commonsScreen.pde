//draws the commons layout 
public void commons(){
    //display buttons
    returnToCampus.display();
    commonsEat.display();
    commonsStudy.display();

    //background image for the commons
    image(commonsBG, 0,0, width, height-130); 

    //moves character and displays them over backgound
    player.displayPlayer();
    player.move();


    //if the return to campus button is clicked, go back to campus and set player position
    if(returnToCampus.isClicked()){
        currentScene = "campus";
        player.x = int(width/2) - 60;
        player.y = int(height/2.5) - 60;
    }

    //if the eat or study buttons are clicked, change stats and clear tasks
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
    //to exit the building
    exitDoor();
}


