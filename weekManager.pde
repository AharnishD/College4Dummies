String[] tasks = {"Attend \n Class", "Commons \n Study", "Commons \n Eat",
 "Attend \n Discussion", "Study In \n Dorm", "Study \n Library", "Work \n Out", "Eat"};


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
        if(!(checkAndAddToDoListItem(i))) i--;
    }


    for(int i = 0; i<toDoList.length; i++){
        if(toDoList[i] == null){
            toDoList[i] = " ";
        }
    }

}

boolean checkAndAddToDoListItem(int index){
    String temp = tasks[int(random(0, tasks.length))];
    for(int e=0; e<toDoList.length; e++){
        if(temp.equals(toDoList[e])){
            return false;
        }
    }
    toDoList[index] = temp;
    return true; 
}

boolean checkForWeekEnding(){
    for(int i=0; i<toDoList.length; i++){
        if(!(toDoList[i].equals(" "))){
            return false;
        }
    }
    return true; 
}

void clearTask(String task){
    for(int i=0; i<toDoList.length; i++){
        if(toDoList[i].equals(task)){
            toDoList[i] = " "; 
        }
    }
    drawUI();
}