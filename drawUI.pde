

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
        text("Happiness", width/2 - width/2 + 50, height-90);
        fill(150,150,0);
        text("Energy", width/2 - width/2 + 50, height-55);

        textSize(15);
        fill(150,0,0);
        for(int i=0; i<toDoList.length; i++){
            if(i<4){
                text(toDoList[i], width/2 + (150*i), height-100);
            }else{
                text(toDoList[i], width/2 + (150*(i-4)), height-50);
            }
        }
    } 
}

String getLetterGrade(){
    if(grade>=90) return "A";
    if(grade>=80) return "B";
    if(grade>=70) return "C";
    if(grade>=60) return "D"; 
    else return "dammmmmmmm u stupid"; 
}




