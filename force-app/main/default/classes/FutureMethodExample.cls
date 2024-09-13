public class FutureMethodExample {
    
    public static void futureExample(List<Id>accIds ){
        List<Account> acc= New List<Account>();
        List<Account> accList = [Select Id,	Cases_Created_Through_Email__c,Cases_Created_Through_Phone__c,	Cases_Created_Through_Web__c,
                                 (SELECT id,Origin,Status From Cases)
                                FROM Account WHERE Id IN:accIds];
        for(Account ac:accList){
            
            integer Email =0, Phone=0, Web=0;
            for(Case Ca: ac.Cases){
                if(Ca.Origin =='Phone'){
                    Phone++;
                }
                 if(Ca.Origin == 'Email'){
                    Email++;
                }
                if(Ca.Origin == 'Web'){
                    Web++;
                }
                
            }
           // ac.Cases_Created_Through_Email__c= Email;  datatype of the custom field is text email is integer 
           // ac.Cases_Created_Through_Phone__c= Phone;
           // ac.Cases_Created_Through_Web__c= Web;
            
        }
        update accList;
      
    }

}