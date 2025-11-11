void wellness(){
    safeBackground();
    player.displayPlayer();
    player.move();
    textAlign(CENTER,CENTER);
    textSize(30);
    fill(255);
    text("Welcome to the wellness center", width/2,height/2);
    returnToCampus.display();

}