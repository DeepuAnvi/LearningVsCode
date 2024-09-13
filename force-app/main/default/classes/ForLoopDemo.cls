public class ForLoopDemo {
    
    Public Void soqlDemo(){
        
        List<Account> acc = [SELECT Id,Name FROM Account LIMIT 10];
        
        if(!acc.IsEmpty()){
            
            for(Account accList : acc ){
                
                System.Debug('');
                
            }
            
        }
        
    }

    
    
    
    
    public void forLoop()
    {
        
        
        List<string> nameList = New List<string>();
        nameList.add('USA');
        system.debug('Displaying the List ==' +nameList);
        
        Set<string> nameSet = New Set<string>();
        nameSet.add('UK');
        system.debug('Displaying the Set ==' +nameSet);
        
        Map<string,string> nameMap = New Map<string,string>();
        nameMap.put('country', 'India');
        system.debug('Displaying the Set ==' +nameMap);
            
     }

}