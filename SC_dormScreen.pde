void dorm(){
    safeBackground();
    player.displayPlayer();
    player.move();
    textAlign(CENTER,CENTER);
    textSize(30);
    fill(255);
    text("Welcome to your dorm", width/2,height/2);
    returnToCampus.display();

    if(returnToCampus.isClicked()){
        currentScene = "campus";
        player.x = int(width/1.5) - 60;
        player.y = int(height/6.7) - 60;
    }

    sleepInDorm.display(); 
    sleepInDorm2.display();

    studyDorm.display();
    studyDorm2.display();
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


    dormBed();
    dormDesk();
}      
   