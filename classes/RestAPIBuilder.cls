@RestResource(urlMapping='/myurl/*')
global with sharing class RestAPIBuilder {
    
    @HttpGet
  global static List<Account> dogetAccount()
    {
        RestRequest req= RestContext.request;
        List<Account> acnt= new List<Account> ();
        String accountid=req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        System.debug('accountid=='+accountid);
        if(accountid!=null ||accountid!=' ')
        acnt=[SELECT AccountNumber,phone,Active__c,BillingCity,Name FROM Account where name=:accountid];
        /*else
        acnt=[SELECT AccountNumber,phone,Active__c,BillingCity,Name FROM Account limit 4];*/
        
        return acnt;
    }
    
    @HttpPost 
  global static String createNewAccount(String accountname) {
      Account acnt=new Account();
      acnt.name=accountname;
      insert acnt;
      return 'Account created';
   }
   
   @HttpPatch
  global static String updateAccount(String accountname, String Phone) {
    Account accnt = [SELECT Id, name,phone from Account WHERE name =: accountname];
    
    accnt.phone=Phone;
    update accnt;
    
    return 'Account Updated';
   }
   
   @HttpDelete
  global static String deleteAccount() {
    String accountName = RestContext.request.params.get('accountname');
    List<Account> acnt = [SELECT phone,Name FROM Account where name=:accountName];
    delete acnt;
    
    return 'Account Deleted';
  }

}