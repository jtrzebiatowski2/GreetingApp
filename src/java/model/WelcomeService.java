
package model;

import java.util.Calendar;

/**
 *
 * @author J-Tron
 */
public class WelcomeService {
    
    private final int MORNING_START_TIME = 0;
    private final int AFTERNOON_START_TIME = 12;
    private final int EVENING_START_TIME = 5;
    
    private final String MORNING_MESSAGE = "Good Morning";
    private final String AFTERNOON_MESSAGE = "Good Afternoon";
    private final String EVENING_MESSAGE = "Good Evening";
    
    private int hourOfDay;
    private String greetingMessage;
    
    
    Calendar c = Calendar.getInstance();
    
    private void determineTimeOfDay(){
        
        hourOfDay = c.get(Calendar.HOUR_OF_DAY);
        
    }
    
    public String getMessage(String name){
       
        determineTimeOfDay();
        
        if(hourOfDay > MORNING_START_TIME && hourOfDay < AFTERNOON_START_TIME){
            greetingMessage = MORNING_MESSAGE + ", " + name;
        }
        else if(hourOfDay > AFTERNOON_START_TIME && hourOfDay < EVENING_START_TIME ){
            greetingMessage = AFTERNOON_MESSAGE + ", " + name;
        }
        else{
            greetingMessage = EVENING_MESSAGE + ", " + name;
        }
        return greetingMessage;
    }
    
    
//    public static void main(String[] args) {
//        WelcomeService ws = new WelcomeService();
//        
//        System.out.println(ws.getMessage("Justin"));
//    }
            
    
    
}
