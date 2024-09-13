public class TriggerScenario1 {
    
    public static void conList(List<Contact> newCon, Map<Id, Contact> oldCon){
        set<Id> listId = new set<Id>();
        Set<Id> accountId= new set<Id>();        
        for(Contact c: newCon){
            if(oldCon.get(c.Id).Contact_Active_Field__c!= c.Contact_Active_Field__c){
                listId.add(c.Id);
                accountId.add(c.AccountId);
                
                
            }
            
        }
        List<Contact> co= [Select Id,Contact_Active_Field__c From Contact WHERE AccountId IN: accountId
                         AND Id NOT IN: listId And Contact_Active_Field__c= 'Yes'];
        for(Contact c:co){
            c.Contact_Active_Field__c= 'Yes';
            
        }
        update co;
        
    }

}