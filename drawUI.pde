

void drawUI(){
    if(currentScene != "startup" && currentScene != "youfailed" && currentScene != "youwin"){
        fill(100,100,200);
        rect(20,height-100, width-40,80,20);
    }
}