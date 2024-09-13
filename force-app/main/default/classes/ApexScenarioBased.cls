public class ApexScenarioBased {

    Public Static Void scenarioBased1(){
        
        List<Account> accList= NEW List<Account>();
        Set<Contact> conList = NEW Set<Contact>();
        
        accList = [SELECT Id,Name,Phone,(SELECT Id,AccountId FROM Contacts ) FROM Account WHERE Phone!=NULL];
        
        If(!accList.IsEmpty()){
            
              for(Account acc:accList)  {
                  
                  
                  System.debug(acc.Name + 'has' + acc.Contacts.size()  +  'Contacts Related');
                
                  for(Contact con: acc.Contacts){
                      
                      
                      system.debug('The related account details' + con.AccountId);
                  
                      
                  }

              }
            
       		}
    }
    
       Public Static Void scenarioBased2(){
        
        List<Account> accList= NEW List<Account>();
        accList = [SELECT Id,Name,Phone,(SELECT Id,AccountId,Amount FROM Opportunities ) FROM Account WHERE Phone!=NULL];
        
        If(!accList.IsEmpty()){
            
              for(Account acc:accList)  {
                  Decimal total =0;
                  for(Opportunity opp: acc.Opportunities){
                      total =total+opp.Amount;
                       System.debug(acc.Name + 'has' + total +  'Worth Opportunity');
                  }
                 

              }
            
       		}
    }
    
    Public Static Void scenarioBased3(){
        
        List<Opportunity> oppList= NEW List<Opportunity>();
        oppList = [SELECT Id,Name From Opportunity WHERE Createddate=THIS_YEAR];
        
        If(!oppList.IsEmpty()){
            
              for(Opportunity opp:oppList)  {
                  
                  if(opp.StageName=='Closed Won'){
                      
                      opp.Description = 'Opportunity is Closed Won';
                      
                  }
                  else if (opp.StageName=='Closed Lost') {
                      opp.Description = 'Opportunity is Closed Lost';
                  }
                           else {
                               opp.Description = 'Opportunity is open';
                           }


              }
                           Update oppList;
            
       		}
        
    }   
     Public Static Void scenarioBased4() {
            
            List<Account> accList= NEW List<Account>();
            accList = [SELECT Id,Name,Total_Contact_Count__c,(SELECT Id,AccountId FROM Contacts ) FROM Account WHERE Phone!=NULL];
            
            If(!accList.IsEmpty()){
                
                  for(Account acc:accList)  {
                      
                      acc.Total_Contact_Count__c = acc.Contacts.Size();
                      System.debug(acc.Name + 'has' + acc.Contacts.size()  +  'Contacts Related');
                    
                }
                Update accList;
        }
        
       
    }
    
      Public Static Void scenarioBased5() {
            
            List<Contact> conList= NEW List<Contact>();
            conList = [Select Id,MobilePhone,Account.Phone FROM Contact Where CreatedDate =LAST_WEEK];
            
            If(!conList.IsEmpty()){
                
                  for(Contact con:conList)  {
                   
                      if(con.MobilePhone =='NULL'&& con.Account.Phone!= NULL) {
                          con.MobilePhone = con.Account.Phone;
                      }
                }
                Update conList;
        }
        
       
    }  
}