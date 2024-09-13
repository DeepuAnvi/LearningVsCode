public class AccountUtils {
    
    public static List<Account> accountsByState(String st) {
        List<Account> acctList = [Select Id,Name From Account where billingState = :st];
        return acctList;
    }

}