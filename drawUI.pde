

void drawUI(){
    if(currentScene != "startup" && currentScene != "youfailed" && currentScene != "youwin" && currentScene != "directions" && currentScene != "endWeekStats"){
        image(hotBar, 15, height-130, width, 450); 
        updateUI();

    }
    
}

void updateUI(){
    if(currentScene != "startup" && currentScene != "youfailed" && currentScene != "youwin" && currentScene != "directions" && currentScene != "endWeekStats"){
        happinessBar.drawBar(happiness); 
        energyBar.drawBar(energy); 

        textAlign(LEFT,CENTER);
        textSize(30);
        fill(0,150,0);
        text("Happiness", 108, height-90);
        fill(150,150,0);
        text("Energy", 85, height-55);

        
        textSize(15);
        fill(150,0,0);
        for(int i=0; i<toDoList.length; i++){
            if(i<4){
                text(toDoList[i], 620 + (130*i), height-100);
            }else{
                text(toDoList[i], 620 + (130*(i-4)), height-50);
            }
            
        }

    } 
}




