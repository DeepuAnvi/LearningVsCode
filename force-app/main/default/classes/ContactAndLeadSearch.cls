public class ContactAndLeadSearch {
    
    public static List<List< sObject>> searchContactsAndLeads(String firstPara){
        
        List<List< sObject>> listOfSosl = [Find :firstPara In All fields Returning contact (Name), lead(Name)];
        return listOfSosl;
    }

}