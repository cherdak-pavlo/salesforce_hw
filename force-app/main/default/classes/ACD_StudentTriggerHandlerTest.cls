@isTest
public class ACD_StudentTriggerHandlerTest {
	@isTest 
    public static void testSetCommentAfterCreateRecord() {
        Student__c student = new Student__c(
        	Name = 'Test Student'
        );
        
        insert student;
        
        Student__c resultStudent = [SELECT Comment__c FROM Student__c WHERE Id = :student.Id LIMIT 1];
        System.assertEquals('Done', resultStudent.Comment__c, 'Comment field should be set to "Done"');
    }
}