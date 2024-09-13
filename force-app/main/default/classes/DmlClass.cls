public class DmlClass {

    Public Static Void dmlinsert(){
        
        list<Account> accList = [SELECT Id,Name,Phone FROM Account limit 5];
        Set<Id> accIds = new Set<Id>();
        Map<Id,Account> mapAccount = new Map<Id,Account>();
        if(!accList.isEmpty()){
            for(Account acc: accList){
                accIds.add(acc.Id);
            }
            
        }
        if(!accList.isEmpty()){
            for(Account acc: accList){
                mapAccount.put(acc.Id ,acc);
            }
            
        }
               
    }
}