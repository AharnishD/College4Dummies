//draws the library layout 

void library(){
    //displays buttons
    studyLibrary.display();
    vendingMachineLibrary.display();
    returnToCampus.display();
    //background image for the library
    image(libraryBG, 0,0, width, height-130);

    //moves character and displays them over backgound
    player.displayPlayer();
    player.move();

    //if the return to campus button is clicked, go back to campus and set player position
    if(returnToCampus.isClicked()){
        currentScene = "campus";
        player.x = int(width/6) - 60;
        player.y = int(height/6.0) - 60;
    }
    //if the vending machine or study buttons are clicked, change stats and clear tasks
    if(studyLibrary.isClicked()){
        energyBar.changeEnergy(-10);
        happinessBar.changeHappiness(-15);
        clearTask("Study \n Library");
    }
    //to exit the library
    exitDoor();
}
