

void drawUI(){
    if(currentScene != "startup" && currentScene != "youfailed" && currentScene != "youwin"){
        image(hotBar, 15, height-130, width, 450); 
        SetUIText();
    }
    
}

void updateUI(){

}

void SetUIText(){
    textSize(30);
    fill(0,150,0);
    text("Health", 85, height-90);
    fill(150,150,0);
    text("Energy", 85, height-55);
}