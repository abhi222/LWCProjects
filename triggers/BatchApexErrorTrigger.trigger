trigger BatchApexErrorTrigger on BatchApexErrorEvent (after insert) {
    List<BatchLeadConvertErrors__c> btLeadList = new  List<BatchLeadConvertErrors__c>();
    
    for(BatchApexErrorEvent btapex :Trigger.new){
        BatchLeadConvertErrors__c btLead = new BatchLeadConvertErrors__c();
        	btLead.AsyncApexJobId__c = btapex.AsyncApexJobId;
            btLead.Records__c = btapex.JobScope;
            btLead.StackTrace__c = btapex.StackTrace;
        btLeadList.add(btLead);
    }
    if(btLeadList.size() > 0 && btLeadList != null){
    	insert btLeadList;
    }


}