void endWeekStats(){
    background(0); 
    player.displayPlayer();
    player.move();
    textAlign(LEFT,CENTER);
    textSize(30);
    fill(255);
    text("Welcome to the gym", width/2,height/2);
    nextWeek.display();

    if(nextWeek.isClicked()){
        currentScene = "dorm"; 
        week++; 
        generateWeekTodoList(); 
        startTimer(90);
    }
}