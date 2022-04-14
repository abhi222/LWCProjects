public class AccountUtils {
    public static List<Account> accountsByState(String billingstate){
        List<Account> listOfAccount =[select id,name from Account where BillingState =:billingstate];
        return listOfAccount;
    }

}