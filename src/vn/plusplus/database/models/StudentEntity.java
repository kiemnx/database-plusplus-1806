package vn.plusplus.database.models;

public class StudentEntity {
    private String studentID;
    private String lastName;
    private String firstName;
    private String sex;
    private String dateOfBirth;
    private String placeOfBirth;
    private String DeptID;
    private Long scholarShip;
    private Float averageScore;

    public StudentEntity() {
    }

    public StudentEntity(String studentID, String lastName, String firstName, String sex, String dateOfBirth, String placeOfBirth, String deptID, Long scholarShip, Float averageScore) {
        this.studentID = studentID;
        this.lastName = lastName;
        this.firstName = firstName;
        this.sex = sex;
        this.dateOfBirth = dateOfBirth;
        this.placeOfBirth = placeOfBirth;
        DeptID = deptID;
        this.scholarShip = scholarShip;
        this.averageScore = averageScore;
    }

    public String getStudentID() {
        return studentID;
    }

    public void setStudentID(String studentID) {
        this.studentID = studentID;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getPlaceOfBirth() {
        return placeOfBirth;
    }

    public void setPlaceOfBirth(String placeOfBirth) {
        this.placeOfBirth = placeOfBirth;
    }

    public String getDeptID() {
        return DeptID;
    }

    public void setDeptID(String deptID) {
        DeptID = deptID;
    }

    public Long getScholarShip() {
        return scholarShip;
    }

    public void setScholarShip(Long scholarShip) {
        this.scholarShip = scholarShip;
    }

    public Float getAverageScore() {
        return averageScore;
    }

    public void setAverageScore(Float averageScore) {
        this.averageScore = averageScore;
    }
}
