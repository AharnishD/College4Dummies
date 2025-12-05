void library(){
    studyLibrary.display();
    vendingMachineLibrary.display();
    returnToCampus.display();

    image(libraryBG, 0,0, width, height-130);


    player.displayPlayer();
    player.move();

    if(returnToCampus.isClicked()){
        currentScene = "campus";
        player.x = int(width/6) - 60;
        player.y = int(height/6.0) - 60;
    }
 
    if(studyLibrary.isClicked()){
        energyBar.changeEnergy(-10);
        happinessBar.changeHappiness(-15);
        clearTask("Study \n Library");
    }
}
