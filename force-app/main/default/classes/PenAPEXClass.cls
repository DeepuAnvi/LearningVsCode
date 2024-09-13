public class PenAPEXClass {
    public static void applyDiscountPen (List<Parker_Pen__c> VarPensListNew)
    {
        for(Parker_Pen__c VarP:VarPensListNew)
        {
            if(VarP.Price__c>= 100)
            {
                VarP.Price__c = VarP.Price__c-20;
            
           }
            else if (VarP.Price__c >= 70 && VarP.Price__c <100){
                VarP.Price__c = VarP.Price__c - 10;
            }
            else if (VarP.Price__c >= 50 && VarP.Price__c <70){
                VarP.Price__c = VarP.Price__c - 5;
        }
            else if (VarP.Price__c >= 10 && VarP.Price__c <50){
                VarP.Price__c= VarP.Price__c - 1;
    }

   }
  }
}