public class ContactSearch {
    public static List<Contact> searchForContacts(String str1,String str2){
        List<Contact> cont = [select id,name from Contact where lastName=:str1 and MailingPostalCode=:str2];
        return cont;
    }

}