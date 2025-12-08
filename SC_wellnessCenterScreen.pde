//draws the wellness center layout 

void wellness(){
    // displays buttons
    returnToCampus.display();
    wcGetHealthy.display();
    //background image for the wellness center
    image(wcSceneBG, 0,0, width, height-130);
    //moves character and displays them over backgound
    player.displayPlayer();
    player.move();

    //if the return to campus button is clicked, go back to campus and set player position  
    if(returnToCampus.isClicked()){
        currentScene = "campus";
        player.x = int(width/1.5) - 60;
        player.y = int(height/3.7) - 60;
    }

    //if the get healthy button is clicked, increase happiness and clear task
    if(wcGetHealthy.isClicked()){
        happinessBar.changeHappiness(45);
        clearTask("You're \n Sick!");
    }
    //to exit the wellness center
    exitDoor();
}

