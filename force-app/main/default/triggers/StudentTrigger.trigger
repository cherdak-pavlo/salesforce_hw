trigger StudentTrigger on Student__c (before insert) {
    if (Trigger.isBefore && Trigger.isInsert) {
        ACD_StudentTriggerHandler.setCommentAfterCreateRecord(Trigger.new);
    }
}