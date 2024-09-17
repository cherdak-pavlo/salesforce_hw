public class ACD_StudentTriggerHandler {
    public static void setCommentAfterCreateRecord(List<Student__c> students) {
        for (Student__c student : students) {
            student.Comment__c = 'Done';
        }
    }
}