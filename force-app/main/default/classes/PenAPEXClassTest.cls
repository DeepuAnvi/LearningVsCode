@isTest 
 public  Class PenAPEXClassTest {
       
    @isTest
    public   Static void TestFunction1()  {
                  
           Parker_Pen__c VarP = new Parker_Pen__c();
           VarP.Name = 'Shekhar';
           VarP.Price__c = 200;
          
              // inserting record in database
            
                   Insert VarP;
           
             // create new box VarP2 and fetch new value of the record which we just inserted
                   
                   Parker_Pen__c VarP2 = New Parker_Pen__c();
                   VarP2 = [SELECT Price__c FROM Parker_Pen__c WHERE Id = : VarP.Id];
               
             // compare the new value with expected value
             
                   System.assertEquals(180, VarP2.Price__c);  
                           
     }
   
     @isTest
       
  Static void TestFunction2()  {
                  
           Parker_Pen__c VarP = new Parker_Pen__c();
           VarP.Name = 'Zara';
           VarP.Price__c = 80 ;
          
              // inserting record in database
            
                   Insert VarP;
           
             // create new box VarP2 and fetch new value of the record which we just inserted
                   
                   Parker_Pen__c VarP2 = New Parker_Pen__c();
                   VarP2 = [SELECT Price__c FROM Parker_Pen__c WHERE Id = : VarP.Id];
               
             // compare the new value with expected value
             
                   System.assertEquals(70, VarP2.Price__c);  
                           
       }
 
 @isTest
 Static void TestFunction3()  {
                  
           Parker_Pen__c VarP = new Parker_Pen__c();
           VarP.Name = 'Jack';
           VarP.Price__c = 51;
          
              // inserting record in database
            
                   Insert VarP;
           
             // create new box VarP2 and fetch new value of the record which we just inserted
                   
                   Parker_Pen__c VarP2 = New Parker_Pen__c();
                   VarP2 = [SELECT Price__c FROM Parker_Pen__c WHERE Id = : VarP.Id];
               
             // compare the new value with expected value
             
                   System.assertEquals(47, VarP2.Price__c);  
                           }

  
 @isTest
  Static void TestFunction4()  {
                  
           Parker_Pen__c VarP = new Parker_Pen__c();
           VarP.Name = 'Shekhar';
           VarP.Price__c = 20;
          
              // inserting record in database
            
                   Insert VarP;
           
             // create new box VarP2 and fetch new value of the record which we just inserted
                   
                   Parker_Pen__c VarP2 = New Parker_Pen__c();
                   VarP2 = [SELECT Price__c FROM Parker_Pen__c WHERE Id = : VarP.Id];
               
             // compare the new value with expected value
             
                   System.assertEquals(19, VarP2.Price__c);  
    
    
    }
     
      @isTest
  Static void TestFunction5()  {
                  
           Parker_Pen__c VarP = new Parker_Pen__c();
           VarP.Name = 'Shekhar';
           VarP.Price__c = 20;
          
              // inserting record in database
            
                   Insert VarP;
                 VarP.Price__c = 25;
                   update VarP;
       // create new box VarP2 and fetch new value of the record which we just inserted
                   
                   Parker_Pen__c VarP2 = New Parker_Pen__c();
                   VarP2 = [SELECT Price__c FROM Parker_Pen__c WHERE Id = : VarP.Id];
               
             // compare the new value with expected value
             
                   System.assertEquals(24, VarP2.Price__c);  
    
  }
     
     
      @isTest
  Static void TestFunction6()  {
                  
           Parker_Pen__c VarP = new Parker_Pen__c();
           VarP.Name = 'Shekhar';
           VarP.Price__c = 20;
          
              // inserting record in database
            
                   Insert VarP;
                   delete VarP;
      
  }
 }