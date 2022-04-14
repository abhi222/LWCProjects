public class AccountTriggerHandler {
    
    public static void CreateAccounts(List<Account> acntslist){
        for(Account acnt: acntslist){
            if(acnt.ShippingState != acnt.BillingState ){
               acnt.ShippingState = acnt.BillingState; 
            }            
        }
        //Database.insert(acntslist,false);
        
    }

}