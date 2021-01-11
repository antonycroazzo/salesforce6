public class OlderAccountsUtility {
    public static void updateOlderAccounts() {
      // Get the 5 oldest accounts
      Account[] oldAccounts = [SELECT Id, CustomerPriority__c  FROM Account ORDER BY CreatedDate ASC LIMIT 5];
      // loop through them and update the Description field
      for (Account acct : oldAccounts) {
          acct.CustomerPriority__c = 'Heritage Account';
      }
      // save the change you made
      update oldAccounts;
    }

}