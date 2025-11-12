public class Week{

    int timeLength = 5; //tweek length in sec
    int weekNumber; 
    String event = "NONE"; 
    int timeWhenWeekStarts = millis();



    public Week(int initWeekNumber){
        this.weekNumber = initWeekNumber;
        generateEvents();
        println("Generated Week :" + weekNumber + " Event: " + event);
    }

    private void generateEvents(){
        if(weekNumber < 4){
            return;
        }
        int r = int(random(1, 10)); //1-9
        if(r == 1) event = "NONE";
        if(r == 2) event = "CLICK_ON_RED";
        if(r == 3) event = "FLAPPY_BIRD";
        if(r == 4) event = "SICK";
        if(r == 5) event = "SNOW_DAY";
        if(r == 6) event = "POP_QUIZ";
        if(r == 7) event = "HOLIDAY";
        if(r == 8) event = "FORGOT_ASSIGNMENT";
        if(r == 1) event = "NONE";

    }

    void checkTimeOfWeek(){
        if(millis() - timeWhenWeekStarts >= timeLength*1000){
            week++;
            println("week " + week + " ended!");
        }
    }
    




}