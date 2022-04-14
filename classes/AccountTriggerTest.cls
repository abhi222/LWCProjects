@isTest
public class AccountTriggerTest {
    
    @isTest static void TestCreateNewAccountInBulk() {
        List<Account> acntlist = new List<Account>();
        for(integer i=0; i<200;i++){
            Account a = new Account(name='Testaccount'+i,BillingState='CA',ShippingState='test');
            acntlist.add(a);
        }
        Test.startTest();
        if(acntlist.size()>0){
            Database.insert(acntlist,false);
        }
        
        Test.stopTest();
    }

}