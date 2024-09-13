public class ParentToChildTriggerScenario {
    
    
    //updating cases when cases got created when ever account gets created
    //stsrt
    Public static void newAccList (List<Account> accList){
       List<case> caList = New List<Case> ();
        set<Id> setId = New set<Id>();
            for(Account ac: accList){
                 
                
            case ca = new case();
            ca.OwnerId = ac.OwnerId ;
            ca.Origin = 'Phone';
            ca.Status = 'New';
            ca.AccountId= ac.Id;
            caList.add(ca);
            setId.add(ac.Id);
            //setId.add(caList.Id);
        }
        insert caList;
        
       List<Account> acc = [Select Id,No_of_Case_Related__c, (Select Id From Cases) From Account where Id IN :setId];
        
        for(Account ac:acc){
            for(Case c: ac.Cases){
                ac.No_of_Case_Related__c= ac.Cases.size();
                
            }
            update acc;
        }
        
    } 
    
    // sending email when billing addresses on the account is changed 
    //Start
    Public static void accBillingList (List<Account> accBill , Map<Id, Account>accOldBill){
        List<Messaging.SingleEmailMessage> emailObj = New List<Messaging.SingleEmailMessage>();
        for(Account acc: accBill){
            if(acc.BillingCity!=accOldBill.get(acc.Id).BillingCity || accOldBill != Null){
                
                
                Messaging.SingleEmailMessage  emailList = New Messaging.SingleEmailMessage();
                List<String> emailAdd =  New List<String>();
                emailAdd.add(Userinfo.getUserEmail());
                emailList.setSubject ('updated billing');
                emailList.SetPlainTextBody('updated billing address');
                emailList.setToAddresses(emailAdd);
                
                emailObj.add(emailList);
                
            }
           Messaging.sendEmail(emailObj);
            
        }
        
    }//End
    
    
    
    
    
    //creating opportunity when ever we create Account
    //start
    public static void accList(List<Account>accList){
        List<opportunity> op = New List<opportunity>();
        for(Account acc: accList){
            opportunity opp = New opportunity();
            opp.AccountId= acc.Id;
            opp.Name = acc.Name;
            opp.StageName='Prospecting';
            opp.CloseDate= System.Today();
            
            op.add(opp);
        }
        Insert Op;
        
    }
    //End

}