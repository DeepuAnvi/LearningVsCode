public class ElectronicsDeviceClass {
    
    public static void ApplyDeviceDiscount(List<ElectonicsDevice__c> VarElectonicsDeviceNew){
       
          
        for (ElectonicsDevice__c VarDevice : VarElectonicsDeviceNew){
            
          
            if (VarDevice.Device_Type__c == 'TV'){
                
                VarDevice.Device_Price__c =  VarDevice.Device_Price__c - 50;
                
            }
              else if (VarDevice.Device_Type__c == 'LED'){
               VarDevice.Device_Price__c = VarDevice.Device_Price__c - 20;
           }
               else if (VarDevice.Device_Type__c == 'LCD'){
               VarDevice.Device_Price__c = VarDevice.Device_Price__c - 30;
           }
            
        }
        
        
    }

}