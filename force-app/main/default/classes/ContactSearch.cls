public class ContactSearch {
    
    public static list<contact> searchForContacts(String firstList, String secondList){
        
        list<contact> conQuery =[Select Id,Name FROM contact Where LastName =: firstList AND  MailingPostalCode =: secondList ];
        return conQuery;
        
    }

}