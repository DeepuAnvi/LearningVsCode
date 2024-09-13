public class AllAccountScenarios {
    
    //AFTER Update
    Public Static void oppStage(List<Account> oppStageList ,Map<Id, Contact>conOldList){
  List<Contact> conlist2= new List<Contact>();
        Set<Id> listId = New Set<Id>();
        for(Account acc:oppStageList){
            
            if((conOldList!=null) || ((conOldList== null) && (acc.Phone!= conOldList.get(acc.Id).Phone))){
                listId.add(acc.Id);
                
                
            }
            List<Account> queryList= [SELECT Id,Name,Phone,(SELECT Id,Name,HomePhone From Contacts) FROM Account WHERE Id IN: listId];
            
            for(Account q:queryList ){
                  if(q.Contacts !=null){
                for(Contact con: q.Contacts){
                    con.HomePhone= q.phone;
                    conlist2.add(con);
                    
                }
                
            }
            }
          update conlist2;
          
            
        }
       

    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //Before update && Before insert on account
    
    Public static void accAddress(List <Account> accAddList , Map<Id,Account> accOldAddMap){
        
        for(Account acc: accAddList){
            if((accOldAddMap== Null )|| (accOldAddMap != Null && acc.BillingStreet!=accOldAddMap.get(acc.Id).BillingStreet )){
                
            acc.ShippingStreet = acc.BillingStreet;
            acc.ShippingCity = acc.BillingCity;
            acc.ShippingCountry= acc.BillingCountry;
            acc.Shipping_Postal_Code__c=acc.Billing_Postal_Code__c;
            }
        }
        
    }
    
    // when we Update phone field on account display message in description  //BEFORE UPDATE
    Public static void accountPhoneUpdate(List<Account> accList, Map<Id, Account> accOldMap){
        
        for (Account acc:accList){
            If(acc.Phone != accOldMap.get(acc.Id).Phone){
                  acc.Description ='Phone field got updated';
	            }
        }
        
    }
    
    //Upon account creation or updation account  //BEFORE Insert && BEFORE UPDATE
	
    	Public static void accountIndustryUpdate(List<Account> accList, Map<Id, Account> accOldMap){
        
        for (Account acc:accList){
            If((accOldMap ==null && acc.Industry != Null && acc.Industry =='Media') || ( acc.Industry!= accOldMap.get(acc.Id).Industry && acc.Industry =='Media')){
                  acc.Rating ='Hot';
	            }
     
        }
            
        
    }
    
    
}