public class AccountTriggerHandler {
    public static void CreateAccounts(List<Account> acctList){
        for(Account acc:acctList){
            if(acc.ShippingState!=acc.BillingState){
                acc.ShippingState= acc.BillingState;
            }
        }
    }
}