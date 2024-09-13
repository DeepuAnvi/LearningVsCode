@isTest
private class DataGenerationTest {
  @testSetup
  static void dataCreation() {
      Account account = TestFactory.getAccount('Muddy Waters Inc.', true);
      Contact contact = TestFactory.getContact(account.Id, 'Muddy', 'Waters', true);
      Opportunity opp = New Opportunity();
      opp.Name = 'Long lost record';
      opp.AccountId = account.Id;
      opp.CloseDate = Date.today().addDays(14);
      opp.StageName = 'Prospecting';
      insert opp;
  }
  @isTest
  static void testBruteForceAccountCreation() {
      List<Account> accts = new List<Account>();
      Integer acctSize = 0;
      
      Test.startTest();
      
      accts = [SELECT Id FROM Account];
      acctSize = accts.size();
      
      Test.stopTest();
      
      Assert.areEqual(0,acctSize,'Was expecting to find at least one account created on the Test Setup');

  }
  @isTest
  static void testUseTestFactoryToCreateAccountsWithContacts() {
      List<Account> accts;
      List<Contact> contacts;
      TestFactory.generateAccountWithContacts(5);
      Integer acctSize = 0;
      Integer cntSize = 0;
      
      Test.startTest();
      
      accts = [SELECT Id FROM Account];
      contacts = [SELECT Id FROM Contact];
      
      acctSize = accts.size();
      cntSize  = contacts.size();
      
      Test.stopTest();
           
      Assert.areEqual(0,acctSize,'Was expecting to find at least one account created on the Test Setup');
      Assert.areEqual(6,cntSize,'Was expecting to find 6 contacts');
      Assert.areNotEqual(acctSize,cntSize,'Was expecting there to be a different number of account and contacts');
  }
  @isTest
  static void testAtTestSetupMethodsRule() {
      List<Opportunity> opps = [SELECT Id, AccountId FROM Opportunity];
      Integer oppSize = 0;
      oppSize = opps.size();
      
      Assert.areEqual(0,oppSize,'Expected test to find a single Opp');
  }
}