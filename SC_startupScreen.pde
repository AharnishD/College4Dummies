//Yes ik this code is very bad. Cry about it. 

//uses a timer and displays the corasponding picture with the time to draw the startup screen 
private int alpha = 0; // alpha for pictures 
private int startupStage =2; // the stage of what it is showing 
private int textOpacity = 0;  
private int timer = 3; // controlls the time on this screen 

void startUpScreen(){

  timer = millis() - startTime;

  if(startupStage==1){ //un used 
    background(20); 
    tint(255, alpha);
    image(teamLogo, (width/2)-225, (height/2)-225, 450, 450);
 
   if (alpha < 255) {  //image opacity 
     alpha += 10; 
   }
   if(timer/1000 == 3){
      startupStage = 2;
   }
      
    
  }else if(startupStage==2){  //displays names of people who worked on project 
    background(20); 
     
    textFont(font);
    textSize(20);
    fill(150,0,0, textOpacity); 
    textAlign(CENTER,CENTER); 
    text("Created for COMP 101 by: Aharnish, Nathan, Ben, GT, Shriyans, Eben.", width/2, height/2);
 
    if (textOpacity < 255) {  // text opacity 
      textOpacity += 1.5;
    }
    if(timer/1000 == 8){
      startupStage = 3; 
      alpha = 0; 
    }
    
  }else if(startupStage==3){ //displays game logo 
    background(20);
    
    tint(255, alpha);
    image(gameLogo, (width/2)-225, (height/2)-225, 450, 450);
    
    if (alpha < 255) {  // image opacity 
     alpha +=10;  
    }
    if(timer/1000 == 11){
      startupStage = 4;
    }
  }else if(startupStage==4){  // changes over to the directions screen 
    background(20); 
    currentScene = "directions";
  }
}