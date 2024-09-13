public class OpportunityRecordCreation {
    
    Public static void oppRecord(List<Opportunity> oppList){
        
        for(Opportunity opp: oppList){
            If(opp.Amount >=100000  && opp.Amount <=500000){
                opp.Description ='HOT Opportunity';
                
            }
            
        }
    }

}