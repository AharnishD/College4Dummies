float [] carpetXs = new float[1200];
float [] carpetYs = new float[1200];
float [] strandLengths = new float [1200];

void dorm(){

    sleepInDorm.display(); 
    sleepInDorm2.display();
    studyDorm.display();
    studyDorm2.display();
    returnToCampus.display();

    image(dormBG, 0,0, width, height-130);

    player.move();
    textAlign(CENTER,CENTER);
    textSize(30);
    fill(255);
    text("Welcome to your dorm", width/2,height/2);
    


    player.displayPlayer();

    if(returnToCampus.isClicked()){
        currentScene = "campus";
        player.x = int(width/1.5) - 60;
        player.y = int(height/6.7) - 60;
    }

    //checks to see if the player has cleared all of the to do list
    //if it is cleared, allows the player to go to the end of week stat menu 
 
    if(sleepInDorm.isClicked() || sleepInDorm2.isClicked()){
        if(checkForWeekEnding()){
            currentScene = "endWeekStats";
            time = -1; 
            energyBar.changeEnergy(999);
        }else{
            println("week not over!");
        }
    }

    if(studyDorm.isClicked() || studyDorm2.isClicked()){
        energyBar.changeEnergy(-10);
        happinessBar.changeHappiness(-20);
        clearTask("Study In \n Dorm"); 
    }


}      
