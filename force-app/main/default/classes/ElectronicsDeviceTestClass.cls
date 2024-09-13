@isTest

public class ElectronicsDeviceTestClass {

    @isTest
    
    public static void testfunction(){
        
        ElectonicsDevice__c VarElectDevice = new ElectonicsDevice__c();
        VarElectDevice.Device_Type__c = 'TV';
         VarElectDevice.Device_Price__c = 100;
        
           // inserting record in database
                
                     insert VarElectDevice;
        
          // create new box VarP2 and fetch new value of the record which we just inserted
       
                     ElectonicsDevice__c VarElectDevice2 = New ElectonicsDevice__c ();
                     VarElectDevice2 = [SELECT Device_Price__c FROM ElectonicsDevice__c WHERE Id = : VarElectDevice.Id];
        
        // compare the new value with expected value
        
                  System.assertEquals(50, VarElectDevice2.Device_Price__c); 
    }
}