public class ContactTriggerHandler {

    public boolean isExecuted;

    //Default cons
    public ContactTriggerHandler() {
        isExecuted = true; 
    }

    public boolean OnBeforeUpdate(Contact[] oldCons, Contact[] updatedCons, Map<ID, Contact> oldConMap, Map<ID, Contact> updatedConMap){
        try{
            //call static methods here e.g. PublicClass.PublicStaticMethod(newObjects);
        } catch(Exception ex) {
            CreateSystemException(ex.getMessage(),ex.getStackTraceString(),ex.getTypeName());
            isExecuted = false;
        }
        return isExecuted;  
    }
    
    public boolean OnAfterUpdate(Contact[] oldCon, Contact[] updatedCons, Map<ID, Contact> oldConMap, Map<ID, Contact> updatedConMap){
        try{
            //call static methods here e.g. PublicClass.PublicStaticMethod(newObjects);
        } catch(Exception ex) {
            CreateSystemException(ex.getMessage(),ex.getStackTraceString(),ex.getTypeName());
            isExecuted = false;
        }
        return isExecuted;  
    }
    
    public boolean OnBeforeInsert(Contact[] newCons){
        try{
            //call static methods here e.g. PublicClass.PublicStaticMethod(newObjects);
        } catch(Exception ex) {
            CreateSystemException(ex.getMessage(),ex.getStackTraceString(),ex.getTypeName());
            isExecuted = false;
        }
        return isExecuted;  
    }
    
    public boolean OnAfterInsert(Contact[] newCons, Map<ID, Contact> insertedConMap){
        try{
            //call static methods here e.g. PublicClass.PublicStaticMethod(newObjects);
        } catch(Exception ex) {
            CreateSystemException(ex.getMessage(),ex.getStackTraceString(),ex.getTypeName());
            isExecuted = false;
        }
        return isExecuted;   
    }
        
    public boolean OnBeforeDelete(Contact[] oldCon, Map<ID, Contact> oldConMap){
        try{
            //call static methods here e.g. PublicClass.PublicStaticMethod(newObjects);
        } catch(Exception ex) {
            CreateSystemException(ex.getMessage(),ex.getStackTraceString(),ex.getTypeName());
            isExecuted = false;
        }
        return isExecuted;  
    }
    
    public boolean OnAfterDelete(Contact[] oldCons, Map<ID, Contact> oldConMap){
        try{
            //call static methods here e.g. PublicClass.PublicStaticMethod(newObjects);
        } catch(Exception ex) {
            CreateSystemException(ex.getMessage(),ex.getStackTraceString(),ex.getTypeName());
            isExecuted = false;
        }
        return isExecuted;   
    }

    //method to create System Logs since we are handling exceptions
    private static void CreateSystemException(String msg, String stack, String type){
        System_Exception__c ex = new System_Exception__c();
        ex.Exception_Message__c = msg;
        ex.Stack_Trace__c = stack;
        ex.Exception_Type__c = type;
        insert ex;
    }
}