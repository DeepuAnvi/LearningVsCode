public class MyFirstClass {
    //STATIC Void RETURNS NOTHING
    public static void firstClass(){
      system.debug('MY FIRST APEX CLASS');
    }
    public integer integerFirstClass(){
        integer a= 3;
        integer b=5;
        integer c=a+b;
        system.debug(c);
        return c;        
    }
    
     public static void stringFirstClass(){
        string A ='My Saleforce Development' ;
        system.debug('A');
    }
    
     public static void booleanFirstClass(){
        boolean A =True ;
         boolean B =False;
        system.debug(A);
    }
    
     public static void idFirstClass(){
       id A ='0065e00000337TmAAI' ;
        system.debug(A);
    }
    
     public static void decimalFirstClass(){
       decimal A = 1.23456 ;
       decimal B = 2.34567;
       decimal C= A+B ; 
          system.debug(C);
         long l =C.round();
        system.debug(l);
    }
     public static void longFirstClass(){
         long l = 234567890123l;
        system.debug(l);
    }
    
     public static void dateFirstClass(){
     DateTime g = DateTime.newInstance (2018,06,15,11,45,20);
        system.debug(g);
    }
    
     public static void blodFirstClass(){
    Blob b = Blob.valueof('sdefrgth');
        system.debug(b);
    }
    
      public static void sobjectFirstClass(){
   Account acct = new Account();
          acct.Name='Krishna';
        
        system.debug(acct);
    }
    
}