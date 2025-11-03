double currentBurnProgress = 0.0;

void deathScreen(String message){

    frameRate(200);
    float noiseVal;
    float noiseScale = 0.02;
    noiseDetail(8, 0.45);
    noStroke(); 
    background(0);  
 
    textFont(font);
    textSize(100);
    fill(150,0,0); 
    textAlign(CENTER,CENTER);
    text(message, width/2, height/2); 

    

    for (int y = 0; y < height; y+=4) {
        for (int x = 0; x < width; x+=4) {

            noiseVal = noise((x) * noiseScale, (y) * noiseScale); 

            if(noiseVal < currentBurnProgress){
               if(noiseVal > currentBurnProgress-0.01 && noiseVal < currentBurnProgress+0.01 ){
                fill(255,200,0); 
                } else {
                fill(0,0,0,0); 
                }
            }else{
              fill(234, 216, 193);
                 
            }

            rect(x,y,4,4);


        }
    }
    currentBurnProgress += 0.005;
}

