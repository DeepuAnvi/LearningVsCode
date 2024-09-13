public class PropertyUtility {

    Public Static Void newListedProperties(){
        
       // List<Property__c> newPropList= new List<Property__c>();
        
        list<Property__c> newPropList = [select Name,Broker__r.Email__c,Days_On_Market__c,Date_Listed__c from Property__c where Days_On_Market__c<= 30];
        
        for(Property__c p :newPropList){
            
            string propEmail = p.Name + ':' +  p.Broker__r.Email__c;
            system.debug('Final Value :  ' + propEmail);
        }
        
        
        
    }
}