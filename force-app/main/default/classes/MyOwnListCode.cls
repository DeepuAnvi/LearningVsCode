public class MyOwnListCode {
    
    Public MyOwnListCode(){
        system.debug('Inside the constructer');
    }
    
    Public  void listcode(){
        
        List<string> acc = new List<string>();
        List<string> acc2 = New List<string>();
        set<string> acc3 = New set<string>();
       
        // Add method Syntax----- add(ListElements)
        acc.add('Red');
        acc.add('blue');
        acc.add('Green');
        system.debug ('list of the colors add(listelements)1' +acc);
        
       // Add method Syntax----- add(Index,ListElements)
       
        system.debug ('list of the colors add(listelements)2' +acc);
        acc.add(0,'White');
        system.debug ('list of the colors  add(index,listelements)' +acc);
    
        // Add method Syntax----- addAll(ListElements)

        system.debug ('list of the colors add(listelements)3' +acc);
        
        /*acc2.add('Black');
        acc2.add('brown');
        acc2.add('orange');
        system.debug ('list of the colors addall(listelements)' +acc2);
        
        acc.addAll(acc2);
         system.debug ('list of the colors addall(listelements)' +acc2);*/
         
       system.debug ('list of the colors addall(listelements)' +acc);
        
        acc3.add('Pink');
        acc3.add('yellow');
        acc3.add('Navy blue');
         
        system.debug ('list of the colors addall(SETelements)' +acc3);
        
        acc.addAll(acc3);
        
        system.debug ('list of the colors add(SETelements)4' +acc);
        
        acc.clear();
         system.debug ('list of the colors aclear(listelements)' +acc);
        
        acc2.add('Black');
        acc2.add('brown');
        acc2.add('orange');
        acc=acc2.clone();
         system.debug ('list of the colors clone(listelements)' +acc);
      
    }
    
    public static void listcontains(){
        list<integer> listCon = New List<Integer>();
        listcon.add(10);
        listcon.add(20);
        listcon.add(30);
        
        if(listcon.contains(20)){
                system.debug('Inside the if loop');
            
          list<integer> con= new list<integer>();

           con.add(40);
            system.debug('changed the 1st index value to 40');
            listcon.addAll(con);
  
        }else{
             system.debug('Inside the if loop');
  
        }
        system.debug('listcon finall value:  '+  listcon);
        
    }
    
    Public static void listcontains1(){
        list<integer> listCon = New List<Integer>();
         list<integer> listCon1 = New List<Integer>();
        listcon.add(10);
        listcon.add(20);
        listcon.add(30);
         listcon1.add(10);
        listcon1.add(20);
        listcon1.add(30);
        
        if(listcon.equals(listcon1)){
            system.debug('list 1 is equal to list 2');
        }else 
        {
            system.debug('Not equal to');
        }
        
    }
    
    Public static void listGet(){
         list<integer> listGet = New List<Integer>();
         listGet.add(10);
        listGet.add(5);
listGet.remove(1);
        system.debug('geting 1 st index'+  listGet );
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}