public class AccountMailingUpdatedOnContact {
    
    Public Static void accdel(List<Account> accList){
        List<Account> acc= New List<Account>();
        for(Account a:accList){
            if(a.Active__c=='Yes'){
                a.addError('The Account is active');
            }
            
        }
      
        
        
    }
    
    public static void conMailUpdate (List<Account> accNewList, Map<Id,Account> accOldlist){
        List<contact> con = new List<contact>();
        set<Id> listId = New set<Id>();
        
        for(Account acc: accNewList ){
            
            if((accOldlist== Null) || ((accOldlist!=null)&& (acc.BillingCountry!=accOldlist.get(acc.Id).BillingCountry))){
                listId.add(acc.Id);
                                                
            }
            
            system.debug('List Id: ' + listId);
            
            for(Account a : [SELECT Id,Name,Phone,BillingCountry,(SELECT Id,Name,HomePhone,MailingCountry From Contacts) FROM Account WHERE Id IN: listId]){
                
                system.debug('Contacts: ' + a.Contacts);
                
                if(a.Contacts!=Null){
                    for(Contact c: a.Contacts){
                        c.AccountId= a.Id;
                        c.MailingCountry= a.BillingCountry;
                        con.add(c);
                    }                    
                }
            }
            
            update con;
        }       
    }
}