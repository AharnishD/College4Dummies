//Yes ik this code is very bad. Cry about it. 

//uses a timer and displays the corasponding picture with the time to draw the startup screen 
private int alpha = 0;
private int startupStage =2; 
private int textOpacity = 0; 
private int timer = 3;

void startUpScreen(){

  timer = millis() - startTime;

  if(startupStage==1){
    background(20); 
    tint(255, alpha);
    image(teamLogo, (width/2)-225, (height/2)-225, 450, 450);
 
   if (alpha < 255) {
     alpha += 10; 
   }
   if(timer/1000 == 3){
      startupStage =2;
   }
      
    
  }else if(startupStage==2){ 
    background(20); 
     
    textFont(font);
    textSize(20);
    fill(150,0,0, textOpacity); 
    textAlign(CENTER,CENTER); 
    text("Created for COMP 101 by: Aharnish, Nathan, Ben, GT, Shriyans, Eben.", width/2, height/2);
 
    if (textOpacity < 255) {
      textOpacity += 1.5;
    }
    if(timer/1000 == 8){
      startupStage =3; 
      alpha=0; 
    }
    
  }else if(startupStage==3){ 
    background(20);
    
    tint(255, alpha);
    image(gameLogo, (width/2)-225, (height/2)-225, 450, 450);
    
    if (alpha < 255) {
     alpha +=10;  
    }
    if(timer/1000 == 11){
      startupStage = 4;
    }
  }else if(startupStage==4){
    background(20); 
    currentScene = "directions";
  }
}