trigger ContactTrigger on Contact (before insert, before update, before delete, after insert, after update, after delete, after undelete) {

		boolean isExecuted = false;

        ContactTriggerHandler handler = new ContactTriggerHandler();
        
        if(Trigger.isInsert && Trigger.isBefore){
           isExecuted = handler.OnBeforeInsert(Trigger.new);
        }
        else if(Trigger.isInsert && Trigger.isAfter){
           isExecuted = handler.OnAfterInsert(Trigger.new, Trigger.newMap);
        }
        else if(Trigger.isUpdate && Trigger.isBefore){
        	isExecuted = handler.OnBeforeUpdate(Trigger.old, Trigger.new, Trigger.oldMap, Trigger.newMap);
        }
        else if(Trigger.isUpdate && Trigger.isAfter){
            isExecuted = handler.OnAfterUpdate(Trigger.old, Trigger.new, Trigger.oldMap, Trigger.newMap);
        }
        else if(Trigger.isDelete && Trigger.isAfter){
            isExecuted = handler.OnAfterDelete(Trigger.old, Trigger.oldMap);
        }
        else if(Trigger.isDelete && Trigger.isBefore){
            isExecuted = handler.OnBeforeDelete(Trigger.old, Trigger.oldMap);    
        }

}