void library(){
    //String test = "true";
    safeBackground();
    player.displayPlayer();
    player.move();
    textAlign(CENTER,CENTER);
    textSize(30);
    fill(255);
    text("Welcome to the livrartyy", width/2,height/2);
   
    returnToCampus.display();
    if(returnToCampus.isClicked()){
        currentScene = "campus";
        player.x = int(width/6) - 60;
        player.y = int(height/6.0) - 60;
    }

    studyLibrary.display(); 
    if(studyLibrary.isClicked()){
        energyBar.changeEnergy(-10);
        happinessBar.changeHappiness(-5);
        clearTask("Study \n Library");
    }

    vendingMachineLibrary.display();
}
/// THIS IS A TEST
/*void mousePressed() {
    boolean vendingClicked = false;
    if (!vendingClicked && vendingMachineLibrary.isClicked()) {
        vendingClicked = true;
        fill(200);
        rect(int(width/1.8),int(height/1.6),90,90);
        vendingMachineLibrary1.display();
        rect(int(width/1.4),int(height/1.6),90,90);
        vendingMachineLibrary2.display();
    } 
}*/