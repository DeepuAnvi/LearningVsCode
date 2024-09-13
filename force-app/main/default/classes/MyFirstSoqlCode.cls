public class MyFirstSoqlCode {
    
    Public Static Void mySoqlQuer(){
        
        List<Contact> soqlQueryOfContact = [Select Id,FirstName,Phone,Account.Phone FROM Contact WHERE AccountId != NULL];
        
        if(!soqlQueryOfContact.IsEmpty()){
            
            for(Contact con:soqlQueryOfContact ){
                con.phone = con.Account.phone;
                
                                
                
            }
            
           
                update soqlQueryOfContact;
            
            
        }
    }

}