public class StringArrayTest {
    
    public static list<string> generateStringArray(integer value){
        List<string> stringlist = new list<string>();
        for(Integer i = 0; i< value; i++){
            stringlist.add('Test'+ i);
            system.debug('stringlist' + stringlist );
            
        }
         return stringlist; 
        }
        
        
    }