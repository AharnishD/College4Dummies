int time = -1;
int lastTime = 0;




void startTimer(int setTime){
  time = setTime; 
}

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
  