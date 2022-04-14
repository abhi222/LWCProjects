public class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads(string str){
        List<List<SObject>> searchList = [FIND 'Smith' IN ALL FIELDS 
                                      RETURNING lead(FirstName,LastName), Contact(FirstName,LastName)];
        return searchList;
    }
    
    

}