public class TriggerScenario2 {
    
    Public static void accList(List<Account> newAccList){
        
        for(Account acc:newAccList){
            
            if(acc.Industry=='Healthcare' || acc.Industry =='Banking'){
                acc.Rating = 'Hot';
                
            }
            
        }
        
    }

}