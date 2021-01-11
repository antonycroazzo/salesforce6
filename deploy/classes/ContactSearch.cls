public class ContactSearch {
public static  List<Contact> searchForContacts(string A,string B) {
   List<Contact> cts = [SELECT ID,Name FROM Contact 
                 WHERE  LastName=: A and MailingPostalCode=: B];
     return cts ;
     }
  
}