int time = -1;
int lastTime = 0;



//sets the time to what you want causeing it to run, setTime needs to be > 0
void startTimer(int setTime){
  time = setTime; 
}

//constantly loops removeing 1 from the timer every sec, when it is at 0, runs week end lojic 
void runTimer(){
  if (millis() - lastTime >= 1000) {
    if(time>0){     
      time--;         
      lastTime = millis();
    }else if(time == 0){
      currentScene = "endWeekStats"; 
      grade-=10;
      time--;
    }
  }
}
  