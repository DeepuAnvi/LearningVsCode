public class OpptyTriggerHandler {
    
    Public Static Void newoppList(List<Account> acc){
        list<opportunity> oppty = new list<opportunity>();
        if(!acc.isEmpty()){
            
                for(Account acclist: acc){
                    opportunity opp = new opportunity();
                    opp.Name = acclist.Name;
                    opp.StageName='Prospecting';
                    opp.AccountId=acclist.Id;
                    oppty.add(opp);
                    
                }
        }
         
          Database.SaveResult[] sr = Database.insert(oppty, false);
        for(integer i=0; i<= sr.size(); i++){
            if(!sr[i].isSuccess()){
                String errors='';
                for(Database.Error err: sr[i].getErrors()){
                    errors =errors + err.getmessage();
                }
                acc[i].addError(errors);
                
            }
            
        }        
    }
}