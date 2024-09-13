public class Helloworld {
  
    // If you dont give private it will take private default. 
    // If it is public we can call dircetly by using system.debug(class instance name or class variable name .greeting)
    private string greeting = 'Hello World';

    // as the property or varaible is private we have to write methods. 
    
    public void printGreeting(){
        
        // we can use variables with in the class methods.
        
        system.debug(greeting); 
    }
    
}