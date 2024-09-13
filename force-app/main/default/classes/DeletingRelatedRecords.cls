public class DeletingRelatedRecords {
    
    public static void accList(List<Account> oldList, map<Id, Account> oldMap ){
        set<Id> listId = New set<Id>();
        for(Account a:oldList){
            listId.add(a.Id);
            
        }
        List<Account> acc= [SELECT Id, (SELECT Id,AccountId FROM Contacts) FROM Account WHERE Id IN: listId];
        for(Account a: acc){
            if(a.Contacts.size()>0){
           oldMap.get(a.id).adderror('can not delete ');
        }
        }

    }
    public static void conList(List<contact> newList){
        list<account> accList = new list<account>();
        for(contact c: newList){
            if(c.AccountId== null){
                account ac = new account();
                ac.Name = c.LastName;
                ac.Rating= 'Hot';
                accList.add(ac);
                
            }
            
        }
        insert accList;
    }
    
 

}