

void drawUI(){
    if(currentScene != "startup" && currentScene != "youfailed" && currentScene != "youwin" && currentScene != "directions"){
        //keepScore()
        image(hotBar, 15, height-130, width, 450); 
        //keepScore();
        SetUIText();
    }
    
}

void updateUI(){
    if(currentScene != "startup" && currentScene != "youfailed" && currentScene != "youwin" && currentScene != "directions"){
        //keepScore();
        SetUIText();
        progressBarsUI();
    } 
}

void SetUIText(){
    textSize(30);
    fill(0,150,0);
    text("Happiness", 108, height-90);
    fill(150,150,0);
    text("Energy", 85, height-55);
}


void progressBarsUI(){
    happiness = 20;
    rect(185, height-101,happiness,20);
    //if ate increase happiness
    //if you got a good test increase happiness
    //if you slept increase happiness a little
    
}
