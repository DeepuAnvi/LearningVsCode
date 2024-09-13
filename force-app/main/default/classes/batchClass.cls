public class batchClass implements Database.Batchable<sobject> {
    
    Public Database.QueryLocator start (Database.BatchableContext bc){
        return Database.getquerylocator([Select Id ,Name From Opportunity]);
        
    }
     
    Public void execute (Database.BatchableContext bc, List<Opportunity> opps ){
        for(Opportunity op:opps){
            op.LeadSource='Phone Enquiry';
        }
        update opps;
    }
     Public void Finish (Database.BatchableContext bc){
        system.debug('Leadsource total: ');
    }

}