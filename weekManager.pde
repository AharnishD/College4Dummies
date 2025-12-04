//holds posible to do list activitys 
String[] tasks = {"Attend \n Class", "Commons \n Study", "Commons \n Eat",
 "Attend \n Discussion", "Study In \n Dorm", "Study \n Library", "Work \n Out", "Eat","Have \n Fun!"};

//fills the to do list with things to do. Prevents dupe ones. 
void generateWeekTodoList(){
    int genNumber;
    if(week < 3){
        genNumber = 3;
    } else if(week < 7) {
        genNumber = 5;
    } else if(week < 11){
        genNumber = 7;
    }else{
        genNumber = 8;
    }

    for(int i = 0; i < toDoList.length; i++){
        toDoList[i] = " ";
    }

    int i = 0;
    while (i < genNumber) {
        String temp = tasks[int(random(0, tasks.length))];
        if(notInToDoList(temp)){
            toDoList[i] = temp;
            i++;
        }
    }


}

boolean notInToDoList(String task){
    for(int i = 0; i < toDoList.length;i++){
        if(task.equals(toDoList[i])){
            return false;
        }
    }
    return true;
}



//checks if everything is clear
boolean checkForWeekEnding(){
    for(int i=0; i<toDoList.length; i++){
        if(!(toDoList[i].equals(" "))){
            return false;
        }
    }
    return true; 
}

//clears task from the to do list if done 
void clearTask(String task){
    for(int i=0; i<toDoList.length; i++){
        if(toDoList[i].equals(task)){
            toDoList[i] = " "; 
        }
    }
    drawUI();
}