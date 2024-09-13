public class AccountAddressTriggerHandler {
    
    public static void billingList(List<Account> acc){
        list<Account> accPostal = new  list<Account>();
        if(!acc.IsEmpty()){
            
            for(Account accList: acc ){               
                if(accList.Match_Billing_Address__c == True){                    
                    accList.Shipping_Postal_Code__c  = accList.Billing_Postal_Code__c;
                    //accList.Billing_Postal_Code__c = accList.Shipping_Postal_Code__c;
                    //accList.Id = accList.Id;
                    //accPostal.add(accList);
                }                
            }
        }
        //if(!accPostal.isEmpty()){
        // update accPostal;
        //}                
    }
    
    
    public static void updateList(List<Account> accList, Map<Id, Account> OldMap){
        
    }

}