trigger AccountTrigger on Account (before insert,after insert,before update, after update) {
    if(Trigger.isBefore && Trigger.isInsert){
        AccountTriggerHandler.CreateAccounts(Trigger.new);
    }

}