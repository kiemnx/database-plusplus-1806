package vn.plusplus.database.services;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ManageStudentService {

    private Connection con;

    public ManageStudentService(Connection con) {
        this.con = con;
    }

    public void updateNoOfStudentInDepartment(){
        try{
        String queryDeptID = "SELECT COUNT(*), DeptID FROM students GROUP BY DeptID";
        Statement statement = con.createStatement();

        ResultSet deptIDs = statement.executeQuery(queryDeptID);

        while (deptIDs.next()){
            Integer noOfStudent = deptIDs.getInt(1);
            String deptID = deptIDs.getString(2);

            System.out.println("Updating no of student for deptID: " + deptID);
            String update = "UPDATE departments SET NoOfStudents = " + noOfStudent + " WHERE DeptID = '" + deptID +"'";
            Statement statement1 = con.createStatement();
            statement1.execute(update);
        }

        String updateRemain = "UPDATE departments SET NoOfStudents = 0 WHERE NoOfStudents IS NULL";
        statement.execute(updateRemain);

        }catch (Exception e){
            System.out.println("Cập nhật thất bại! "+e);
        }
    }

    public void updateAvegerScore(){
        try{
            String getStudentId = "SELECT distinct StudentID FROM manage_student.results";
            Statement statement = con.createStatement();

            ResultSet resultSet = statement.executeQuery(getStudentId);
            List<String> studentIds = new ArrayList<>();
            while (resultSet.next()){
                studentIds.add(resultSet.getString(1));
            }

            // Spring JPA

            String getCourseCredits = "SELECT CourseID, Credits FROM manage_student.courses";
            Statement creditSt = con.createStatement();
            ResultSet creditRs = creditSt.executeQuery(getCourseCredits);
            Map<String, Integer> mapCredit = new HashMap<>();
            while (creditRs.next()){
                mapCredit.put(creditRs.getString(1), creditRs.getInt(2));
            }

            for(String stId : studentIds){
                String getCourse = "SELECT CourseID, Mark FROM results WHERE StudentID ='" + stId +"'";
                Statement statement1 = con.createStatement();
                ResultSet resultSet1 = statement1.executeQuery(getCourse);

                Map<String, Float> studentStore = new HashMap<>();
                while (resultSet1.next()){
                    String courseId = resultSet1.getString(1);
                    Float mark = resultSet1.getFloat(2);

                    Float value = studentStore.get(courseId);
                    if(value == null){
                        studentStore.put(courseId, mark);
                    } else {
                        if(value < mark){
                            studentStore.put(courseId, mark);
                        }
                    }
                }

                // Calculate score
                Float total = 0.0f;
                Integer creditTotal = 0;
                for(String courseId : studentStore.keySet()){
                    Float mark = studentStore.get(courseId);
                    Integer credit = mapCredit.get(courseId);

                    total = total + mark * credit;
                    creditTotal = creditTotal + credit;
                }

                Float avgScore = total/creditTotal;
                String updateStudent = "UPDATE students SET AverageScore = '" + avgScore + "' WHERE StudentID = '" + stId + "'";
                Statement updateSt = con.createStatement();
                updateSt.executeUpdate(updateStudent);
            }
        } catch (Exception e){
            System.out.println("Error: " + e);
        }

    }
}
