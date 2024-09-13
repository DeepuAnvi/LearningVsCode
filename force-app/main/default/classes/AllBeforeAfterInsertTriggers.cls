public class AllBeforeAfterInsertTriggers {
    
    //Before delete
    Public static void accDeleteerror(List<Account> accDelete ){
        for(Account acc: accDelete){
            if(acc.Active__c =='Yes'){
                acc.addError('Can not delete the Active account when it is active');
            }
        }
    }
    
    
    //Before Insert
    
    Public Static void accIndustry(List<Account> acc){
        
        for(Account a:acc){
            If(a.Industry!=Null && a.Industry=='Media'){
                a.Rating='Hot';
                
            }
        }
    }
    
    //Before insert
    Public static void accBilling(List<Account> accBill){
        for(Account a: accBill){
            if(a.ShippingAddress==null){
            a.ShippingCity = a.BillingCity;
            a.ShippingCountry = a.BillingCountry;
            a.Shipping_Postal_Code__c = a.Billing_Postal_Code__c;
            }
           
        }
        
    }
    //Before insert throwing error
    
    Public static void accError(List<Account> accErr){
        for(Account a:accErr){
            if(a.AnnualRevenue<1000){
                a.addError('The amount should be greater than 1000');
                
            }
            
        }
        
    }
    
      //Before insert throwing error
    
    Public static void accErrorOnName(List<Account> accErr , Map<Id, Account> accOldName){
        set<Id> accId= New Set<Id>();
        for(Account a:accErr){
            if(a.Name != accOldName.get(a.Id).Name){
                a.addError('Account Name can not be modified');
                accId.add(a.Id);
                
            }
           
        }
        
    }
    

//After Update account billing address should also update on child(contact) mail address also

    Public static void accConList(List<Account> accNew, Map<Id,Account> accOld){
        
        set<Id> acId= New set<Id>();
        for(Account a: accNew){
            if(a.BillingStreet!=accOld.get(a.Id).BillingStreet){
                acId.add(a.Id);
                
            }
            
            
        }
        List<Account> accQu=[SELECT Id,BillingStreet,(SELECT ID,MailingStreet FROM Contacts) From Account where Id IN:acId];
        
        List<Contact> conListUpdated = New List<Contact>();
        if(!accQu.isEmpty()){
            for(Account ac:accQu){
                
                for(Contact c:ac.contacts){
                   
                     c.MailingStreet= ac.BillingStreet;
                    conListUpdated.add(c);
                }
               
                
            }
            
        }
        update conListUpdated;
        
    }

    
    //After INsert
   
    Public static void accCreation(List<Account> accList){
        List<Opportunity> oppList = New List<Opportunity>();
        for(Account a : accList){
            Opportunity opp = New Opportunity();
            opp.Name = a.Name;
            opp.StageName= 'Prospecting';
            opp.ForecastCategoryName='	Omitted';   
            opp.AccountId=a.Id;
            opp.CloseDate= system.today();
            oppList.add(opp);
        }
        If(!oppList.isEmpty()){
            insert oppList;
            
        }
        
    }
    //After Insert creating contacts
  
    Public Static void accCon(List<Account>accConList){
        List<Contact> conList = New List<Contact>();
        for(Account a:accConList){
            Contact con = New Contact ();
            con.LastName = a.Name;
            con.AccountId= a.Id;
            conList.add(con);
            
        }
        If(!conList.isEmpty()){
            insert conList;
            
        }
        
    }
    
}