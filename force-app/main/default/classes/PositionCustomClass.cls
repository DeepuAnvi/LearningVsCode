public class PositionCustomClass {

    public static void positionList (List<Position__c> posList){
        
        for(Position__c poss: posList){
            if((poss.Open_Date__c==Null) || (poss.Min_pay__c==Null) || (poss.Max_pay__c==Null)){
                poss.Open_Date__c= system.Today();
                poss.Min_pay__c = 10000;
                poss.Max_pay__c =15000;
                
            }
            
        }
        
    }
    
     public static void creatingTask (List<Position__c> listPos){
        List<Task> tas= New List<Task>();
         List<Contact> con = New List<Contact>();
        for(Position__c poss: listPos){
            
            if(poss.Status__c=='New Position'){
                contact conList = New Contact ();
                
                Task t = New Task();
                t.WhatId= poss.Id;
                t.OwnerId = Userinfo.getUserId();
                t.Status ='Not Started';
                t.ActivityDate= Date.today() + 7;
                t.WhoId=  'Conner';
                tas.add(t);                
            }
            
        }
         
         if(!tas.isEmpty()){
             insert tas;
             
         }
           if(!tas.isEmpty()){
             insert tas;
             
         }
        
    }
}