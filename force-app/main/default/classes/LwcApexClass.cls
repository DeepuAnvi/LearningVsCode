public class LwcApexClass {
    
    @AuraEnabled(Cacheable=true)
    
    Public static List<Contact> getContactList(){
        
        Return [SELECT Id FROM Contact with SECURITY_ENFORCED LIMIT 20];
    }

}