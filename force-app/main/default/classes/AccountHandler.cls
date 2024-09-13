public with sharing class AccountHandler {
    
   
       public static Account insertNewAccount(String name){

        try{

        Account acc = new Account(Name = name);

        insert acc;

        return acc;

        }catch(DMLException e){

            return null;

        }

    }

        

    
    
    
    
    
    
    public static void CreateNewOpportunity(List<Account> accts) {
        for (Account a : accts) {
            Opportunity opp = new Opportunity();
            opp.Name = a.Name + ' Opportunity';
            opp.AccountId = a.Id;
            opp.StageName = 'Prospecting';
            opp.CloseDate = System.Today().addMonths(1);
            insert opp;
        }
    }
    
    public static void  insertAccount(Integer value) {
        List<Account> addAccounts = New List<Account>();
        Integer N=1;
        while(N<=value){
           Account acc =New Account();
            acc.Name = 'Acme Inc N' +N;
            system.debug('acc.Name'+acc);
            acc.AccountNumber = 'A000n'+N;  
             system.debug('acc.AccountNumber'+acc);
            addAccounts.add(acc);
            system.debug(addAccounts);
            N=N+1;
            system.debug(' N'+ N);    
        }
        insert addAccounts;
    }
}