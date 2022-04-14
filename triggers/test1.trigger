trigger test1 on Account (after insert) {
 if(Trigger.isAfter){
        if(Trigger.isInsert ){ 
              Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
                mail.setToAddresses(new String[] { 'abhijeet_volvoikar@persistent.com' });
                mail.setReplyTo('abhijeet_volvoikar@persistent.com');
                mail.setSenderDisplayName('SFDC Support');
                mail.setSubject('Error in Software Upgrade End date Trigger'+ date.today().format());
                mail.setHtmlBody('<H3> Error in Software Upgrade End date Trigger </H3>');
                Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
        }
    }
}