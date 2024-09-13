public class TriggerScenario3 {
    
    Public Static Void conList(List<Contact> newConList){
        
        for(integer i=0; i<=5; i++){
            contact con = new contact ();
            con.LastName = 'Trigger Scenario' +i;
            
        }
        List<Account> accList= [Select Id,(Select Id,AccountId FROM contacts) From Account ];
        
        
    }

}