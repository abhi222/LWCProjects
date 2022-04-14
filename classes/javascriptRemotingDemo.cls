global with sharing class javascriptRemotingDemo {
    
    public string objectname{get;set;}
    
   /* @RemoteAction
    global static list<Vehicle__c> getRecords(String vname)
    {
        List <vehicle__c> sampleData = new List <vehicle__c>();                
        sampleData = Database.query('SELECT Id, Name, brand__c, Model__c FROM vehicle__c WHERE brand__c LIKE \'%' + vname + '%\' OR name LIKE \'%' + vname + '%\'');
        return sampleData;
    }*/

}