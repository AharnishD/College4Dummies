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

   
void dormRug(){ /// trying to figure out how to freeze this so the texture is there but doesn't update, looks like fuzzy tv now

// base color of carpet
  noStroke();
  fill(#CED7DE); // gray pulled from blue hue range
  rect(0, 0, width, height-130);

// adding texture to carpet
  stroke(#A2623A); // going with a color in the redish family hoping for a warm light feel
  strokeWeight(1);

  for (int i = 0; i<1200; i++) { // 1200 possible fibers
    //float carpetX = random(0, width);  // chose random location within carpet horizontally
    //float carpetY = random(0, height -130); // chose random location within carpet vertically
    //float strandLength = random(3, 7); // random length of lines between 3-7 pixels
  
    // give short vertical lines to add texture to the base color of carpet
      line(carpetXs[i], carpetYs[i], carpetXs[i], carpetYs[i] + strandLengths[i]); // makes strands at random locations per the for loop. 
  }
}