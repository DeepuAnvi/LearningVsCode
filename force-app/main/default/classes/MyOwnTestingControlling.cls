public class MyOwnTestingControlling {
    
    Public Static Void listAcc(List<Account> accList){
 //Scenario 1 
 //Before Insert
        for(Account acc: accList){
            if(acc.Industry!= Null && acc.Industry=='Media'){
                acc.Rating ='Hot';
            }
        }
    }
    
  //Scenario 2:
  //After Insert
    Public Static void accListForOpp (List<Account> acc){
        
        List<Contact> con = New List<Contact>();
        for(Account accList: acc){
            contact conlist = New contact();
            conlist.LastName = accList.Name;
            conList.AccountId = accList.Id;
            con.add(conList);
        }
        
      insert con;
    }
    
    
    Public static void oppList(List<Opportunity> oppty){
        
        for(Opportunity opp:oppty){
            if(opp.Type=='New Customer'){
                opp.Description='This is a new customer';
                
            }
            
        }
        
    }
    
    
}