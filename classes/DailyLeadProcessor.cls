global class DailyLeadProcessor implements Schedulable {
    
    global void execute(SchedulableContext ctx) {
        List<Lead> leadslist = new List<Lead>();

            for (Lead lead : [SELECT Id,Name,LeadSource FROM Lead ORDER BY LeadSource DESC NULLS FIRST]) {
                lead.LeadSource = 'Dreamforce';
                
                // add lead to list to be updated
                leadslist.add(lead);

            }

        update leadslist;
    }

}