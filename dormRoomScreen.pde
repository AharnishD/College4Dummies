Button library;

void dormRoomScreen(){
    player = new Human("Ben",35,200,200);
    library = new Button(200,200,200,200,"AOK. Library");
    
    player.display();
    //library.display();
    player.move();
}
