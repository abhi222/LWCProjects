global with sharing class javascriptRemoting2{
    
    
     public List<account> listOfAccounts{get;set;}
  public String name {get;set;}
        
  public PageReference getAccountsByName(){
   listOfAccounts=[ select AccountNumber,name,BillingCity from Account ];
   return null;
  }
    
    @RemoteAction
    global static list<Account> getaccountnames(String accnt){
        
        List<Account> accountlist=new List<Account>();
        accountlist=Database.Query('select AccountNumber,name,BillingCity from Account where name LIKE \'%' + accnt + '%\'');
        return accountlist;

    }
    
}