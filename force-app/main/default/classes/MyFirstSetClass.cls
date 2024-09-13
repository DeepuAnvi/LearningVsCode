public class MyFirstSetClass {

    Public static void setList(){
        
        set<integer> listOfSet1 = new set<integer>();
        set<integer> listOfSet2 = new set<integer>();
        listOfSet1.add(10);
        listOfSet1.add(20);
        listOfSet1.add(30);
        
        listOfSet2.add(40);
        listOfSet2.add(50);
        listOfSet2.add(30);
        
        //listOfSet1.addAll(listOfSet2);
        //
        if(listOfSet1.containsAll(listOfSet2)){
           system.debug('inside the if condition'); 
                        }else{
                            system.debug('outside the loop'); 
                        }
        
        //system.debug('Adding the list to set---' + listOfSet1); 
    }
}