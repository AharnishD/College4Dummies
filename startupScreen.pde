//Yes ik this code is very bad. Cry about it. 

private int alpha = 0;
private int startupStage =1; 
private int textOpacity = 0; 

void startUpScreen(){
  if(startupStage==1){
    frameRate(120);
    background(20);
    tint(255, alpha);
    image(teamLogo, (width/2)-225, (height/2)-225, 450, 450);
 
   if (alpha < 255) {
     alpha += 10; 
   }else{
      startupStage =2;
   }
      
    
  }else if(startupStage==2){ 
    background(20); 
     
    textFont(font);
    textSize(20);
    fill(150,0,0, textOpacity); 
    textAlign(CENTER,CENTER); 
    text("Created By: Nathan, Aharnish, Ben, GT, Shriyans, Eben ", width/2, height/2);
 
    if (textOpacity < 255) {
      textOpacity += 1.5;
    }else{
      startupStage =3; 
      alpha=0; 
    }
    
  }else if(startupStage==3){ 
    background(20);
    
    tint(255, alpha);
    image(gameLogo, (width/2)-225, (height/2)-225, 450, 450);
    
    if (alpha < 255) {
     alpha +=10;  
     }else{
      startupStage =4;
    }
  }else if(startupStage==4){
    background(20);
    frameRate(60); 
    currentScene = "dorm";

  }
  
  
   
}
