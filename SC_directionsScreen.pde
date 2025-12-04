String directions = "Use [W] [A] [S] [D] and the [ARROW] keys to move around.\nMove your player to a location and left-click your mouse to enter.\nIn each location you can chose an option to change your stats.\nStats are Health, Energy, Money, and Grade.\nThere are random \"challenges\" that you need to complete.\nyou need to survive 15 weeks, if any stats hits 0..."; 

void directions(){
    background(0);
    player.displayPlayer();
    player.move();
    textAlign(CENTER,CENTER);
    textFont(font);
    textSize(30);
    fill(255);
    text(directions, width/2, 170);
    textSize(60);
    fill(100,0,0);
    text("You Fail", width/2, 300); 
    start.display();

    if(start.isClicked()){
        generateWeekTodoList(); 
        currentScene = "dorm";
        //startTimer(90);
    }

}