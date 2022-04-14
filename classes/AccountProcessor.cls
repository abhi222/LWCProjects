public class AccountProcessor {
    @future
    public static void countContacts(List<Id> recordIds){
        List<Account> acntList  = new List<Account>();
        for(Account acnt :[select id,name,Number_of_Contacts__c,(select id ,name from Contacts) from Account where id in:recordIds]){
           acnt.Number_of_Contacts__c = acnt.contacts.size();
           acnt.description = 'test'; 
           acntList.add(acnt); 
            
        }
        Database.update(acntList);
        
    }

}