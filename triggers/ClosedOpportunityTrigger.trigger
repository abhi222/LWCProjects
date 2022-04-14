trigger ClosedOpportunityTrigger on Opportunity (before insert,before update) {
    
   
    List<Task> listoftaskofOpportunity = new List<Task>();
    
    for(Opportunity op : Trigger.new){
        if(op.StageName =='Closed Won'){
            listoftaskofOpportunity.add(new task(Subject='Follow Up Test Task',WhatId=op.Id));
        } 
    }
    
    if(listoftaskofOpportunity.size()>0){
        Database.insert(listoftaskofOpportunity,false);
    }

}