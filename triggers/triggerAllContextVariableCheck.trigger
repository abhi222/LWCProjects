trigger triggerAllContextVariableCheck on Contact (before update) {

         for(Contact c: trigger.new){
             IF(c.Description!= trigger.oldMap.get(c.id).Description){
                update c;
             }
         }


}