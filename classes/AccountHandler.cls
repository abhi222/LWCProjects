public class AccountHandler {
    public static Account insertNewAccount(String acntNam){
        Account a;
        try{
            a = new Account(name=acntNam);
            Database.insert(a);
            
        }catch(Exception e){
            return null;
        }
        return a;    
    }

}