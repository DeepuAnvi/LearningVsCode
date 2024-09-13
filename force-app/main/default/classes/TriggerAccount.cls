public class TriggerAccount {
    
    //Updating phone before update
    public static void newList(List<Account> newList, Map<Id,Account> oldMap){
        if(!newList.isEmpty()){
            
            for(Account acc: newList){
                if(acc.phone!= oldMap.get(acc.Id).phone){
                    acc.Description= 'Phone number got Updated';
                }
            
          }
        }
    }
    
    
    //after Updating account opportunity phone number should be updated
    
    public static void newoppList(List<Account> newList, Map<Id, Account>oldMap){
        
        set<Id> accId = new set<Id>();
        List<opportunity> opty = new List<opportunity>();
                if(!newList.isEmpty()){
            
                    for(Account acc: newList){
                       accId.add(acc.Id);
                    
                  		}
                }
            
            list<Account> acc =[Select Name,Id,Phone ,(Select Id,Phone__c from Opportunities) From Account where Id IN:accId];
            if(!acc.isEmpty()){
                
                for(Account accl: acc){
                    
                     for(opportunity oppty : accl.Opportunities){
                      opportunity opp = new opportunity();
                         opp.id= oppty.id;
                         opp.Phone__c= oppty.Phone__C;
                         opty.add(opp);
                      
                    
                }
                    
                }
               
              
                
            }
            if(!opty.isEmpty()){
                update opty;
            }
            
        
    }
    
    
    
    // before insert
    public static void newList(List<Account> newAccountList){
        
        for(Account acc: newAccountList){
            acc.Description= 'Test Description';
        }
        
    }
    
    //Before insert 
    
    Public static void beforeAccountInsert(List<Account> newAccList){
        
        for(Account acc: newAccList){
            
            if(acc.Industry != null  &&  acc.Industry == 'Energy'){
                acc.Rating='Hot';
                
            }else {
                acc.Rating='Cold';
            }
        }
        
    }
    
    // After insert
    
    Public static void afterAccountInsert(List<Account> AccList){
        List<opportunity> newOpp = new List<opportunity>();
        if(!AccList.isEmpty()){
            for(Account acc: AccList){
                opportunity opp= new opportunity();
                opp.Name = acc.Name;
                opp.CloseDate= system.today();
                opp.StageName='	Prospecting';
                opp.AccountId= acc.id;
                newOpp.add(opp);
            }
        }
        if(!newOpp.isEmpty()){
            insert newOpp;
        }
        
    }
    
}