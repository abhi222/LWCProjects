@IsTest
public class AccountProcessorTest {
    
    @IsTest
    private static void testcountContacts() {
        Account acct = new Account(name='test account',Number_of_Contacts__c=0);
        insert acct;
        List<ID> acntid = new List<ID>();
        

        // Consider setting some address fields as required by copyAddressFields
        Contact c = new Contact(AccountId=acct.Id, lastname='testing', firstname='apex');
        insert c;
        acntid.add(acct.id);
        Test.startTest();
        AccountProcessor.countContacts(acntid);
        
        Test.stopTest();
        
    }

}