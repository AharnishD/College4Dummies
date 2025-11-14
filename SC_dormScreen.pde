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
    }

    sleepInDorm.display(); 
    sleepInDorm2.display();

    studyDorm.display();
    studyDorm2.display();
    if(sleepInDorm.isClicked() || sleepInDorm2.isClicked()){
        if(checkForWeekEnding()){
            currentScene = "endWeekStats"; 
            energyBar.changeEnergy(999);
            happinessBar.changeHappiness(999);
        }else{
            println("week not over!");
        }
    }

    if(studyDorm.isClicked() || studyDorm2.isClicked()){
        energyBar.changeEnergy(-10);
        happinessBar.changeHappiness(-20);
    }


    dormBed();
    dormDesk();
}      
   