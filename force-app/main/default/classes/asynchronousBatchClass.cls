public class asynchronousBatchClass implements Database.Batchable<sObject> ,Database.stateful {
    
    public integer recordCount = 0;
    
    public Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator([Select Id,Name From Opportunity]);
        
    }
     public void execute(Database.BatchableContext bc, List<Opportunity> opps){
         for(opportunity op: opps){
             op.LeadSource = 'Web';
             
         }
         update opps;
         recordCount= recordCount +opps.Size();
        
    }
     public  void finish(Database.BatchableContext bc){
         system.debug('Total records '+ recordCount);
         
    }
    

}