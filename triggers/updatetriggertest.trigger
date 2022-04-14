trigger updatetriggertest on Account (before update) {
   
    for(Account a :Trigger.new){
        /*if(a.description==Trigger.oldMap.get(a.id).description){
            a.addError('Cannot update a account as description is not changed');
        }*/
    }
    
}