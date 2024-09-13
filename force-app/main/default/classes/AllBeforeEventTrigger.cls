public class AllBeforeEventTrigger {
    
    // BEFORE INSERT (Updating rating based on industry)
    public Static Void updateRating(List<Account> accList){
        
        if(!accList.isEmpty()){
            for(Account acc: accList){
                if(acc.Industry != 'Banking'){
                    acc.Rating ='Hot';
                }else{
                    acc.Rating='cold';
                }
            }
        }
        
    }

    
         // BEFORE UPDATE (Updating ACCOUNT DESCRIPTION IF ACCOUNT PHONE IS UPDATED)
         
    public Static Void updateAccountDescription (List<Account> accList, Map<Id,Account> OldMap){
        
        if(!accList.isEmpty()){
            for(Account acc: accList){
                if(acc.Phone!=OldMap.get(acc.Id).Phone){
                    acc.Description='phone number got updated234';
                    
                }
                 
            }
        }
        
    }
    
           // BEFORE DELETE (AHOW ERROR WHEN ACTIVE ACCOUNT IS DELETED)
    public Static Void deleteActiveAccount (List<Account> accList){
        
        if(!accList.isEmpty()){
            for(Account acc: accList){
                if(acc.Active__c == 'Yes'){
                    acc.addError('You canot delete the active account');
                }                
              
                 
            }
        }
        
    }
}