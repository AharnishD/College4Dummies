//displays the stats at the end of the week
void endWeekStats(){
    background(0); 
    player.displayPlayer();
    player.move();
    textAlign(CENTER,CENTER);
    textSize(60);
    fill(255);
    /*text("=====End of week report=====", width/2,height/5); 
    fill(200,0,200);
    text("Grade: " + getLetterGrade() + " (" + grade + "%)", width/2,height/4); 
    fill(200,0,0);
    text("Health: " + happiness, width/2,height/3); 
    fill(0,200,0);
    text("Money: " + "$"+money, width/2,height/2.5);*/
    
    //  ADD WEEK SYSTEM WHERE IT DISPLAYS END OF NORMAL WEEK, MIDTERM REPORT, FINAL - AHARNISH WILL DO
    if(week < 8){
        text("=====End of week report=====", width/2,height/5); 
        fill(200,0,200);
        text("Grade: " + getLetterGrade() + " (" + grade + "%)", width/2,height/4); 
        fill(200,0,0);
        text("Health: " + happiness, width/2,height/3); 
        fill(0,200,0);
        text("Money: " + "$"+money, width/2,height/2.5);
    }else if(week == 8){
        text("=====Midterm report=====", width/2,height/5); 
        fill(200,0,200);
        text("Grade: " + getLetterGrade() + " (" + grade + "%)", width/2,height/4); 
        fill(200,0,0);
        text("Health: " + happiness, width/2,height/3); 
        fill(0,200,0);
        text("Money: " + "$"+money, width/2,height/2.5);
    }else if(week == 15){
        text("=====Final report=====", width/2,height/5); 
        fill(200,0,200);
        text("Grade: " + getLetterGrade() + " (" + grade + "%)", width/2,height/4); 
        fill(200,0,0);
        text("Health: " + happiness, width/2,height/3); 
        fill(0,200,0);
        text("Money: " + "$"+money, width/2,height/2.5); 
    }

    nextWeek.display(); 
    if(nextWeek.isClicked()){
        currentScene = "dorm"; 
        week++; 
        generateWeekTodoList(); 
        //startTimer(90);
    }
}