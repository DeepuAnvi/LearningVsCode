public class AccountUtility {
    
    public static void viewAnnualRevenue(){
     
        List<Account>  accountsList =[SELECT Name,
                                      		AnnualRevenue 
                                      		From Account];
        for(Account acc : accountsList ){
           
            string acctRev = acc.Name +':'+ acc.AnnualRevenue;
            system.debug(acctRev);
            
        }
    }

}