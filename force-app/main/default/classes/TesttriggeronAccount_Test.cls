@isTest
public class TesttriggeronAccount_Test {

    static TestMethod Void TEST(){
        Account acc = New Account();
        acc.Name= 'AccountTest';
        insert acc;
        Contact Con = New Contact();
        Con.FirstName = 'ContactName';
        Con.LastName = 'ContactLast';
        Con.AccountId = acc.Id;
        insert Con;
        
    }
}