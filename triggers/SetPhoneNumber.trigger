trigger SetPhoneNumber on Account (after insert) {
    List<Account> accntlist=new List<Account>();
    
    for(Account acnt: Trigger.new)
    {
        accntlist.add(new Account(ID=acnt.id,phone='9923882430'));
    }
    if(accntlist.size()>0)
    {
        update accntlist;
    }
}