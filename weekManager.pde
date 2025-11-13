
String[] tasks = {"Attend \n Class", "Study", "Work \n Out", "Buy \n Book", "Sleep", "Party", "Attend \n Discussion"};


void generateWeekTodoList(){
    int genNumber;
    if(week < 3){
        genNumber = 8;
    } else if(week < 7) {
        genNumber = 5;
    } else if(week < 11){
        genNumber = 7;
    }else{
        genNumber = 8;
    }

    for(int i = 0; i<genNumber; i++){
        toDoList[i] = tasks[int(random(0, tasks.length))];
    }

    for(int i = 0; i<toDoList.length; i++){
        if(toDoList[i] == null){
            toDoList[i] = " ";
        }
    }


}