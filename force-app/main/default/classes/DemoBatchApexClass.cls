public class DemoBatchApexClass implements Database.Batchable<SObject>, Database.Stateful{
    
    public integer recordCount = 0;
    public DataBase.querylocator start (Database.BatchableContext bc){
        
        return DataBase.getqueryLocator('Select Id,BillingCountry,(SELECT Id,MailingCountry FROM Contacts) From Account');
        
    }
    public void execute(Database.BatchableContext bc , List<Account> accList){ 
          List<Contact> conList= New List<Contact>();
        for(Account ac:accList){
            for(Contact c : ac.Contacts){
       
            c.AccountId= ac.Id;
            c.MailingCountry = ac.BillingCountry; 
                conList.add(c);
                recordCount++;
            }
          
      
        }
        update conList;
    }
    
    public void finish (Database.BatchableContext bc){
        system.debug('Number of batches ');
        
    }
    
    
}