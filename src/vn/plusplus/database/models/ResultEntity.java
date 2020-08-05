package vn.plusplus.database.models;

public class ResultEntity {
    private String studentID;
    private String courseID;
    private String year;
    private int semester;
    private float mark;
    private String grade;

    public ResultEntity() {
    }

    public ResultEntity(String studentID, String courseID, String year, int semester, float mark, String grade) {
        this.studentID = studentID;
        this.courseID = courseID;
        this.year = year;
        this.semester = semester;
        this.mark = mark;
        this.grade = grade;
    }

    public String getStudentID() {
        return studentID;
    }

    public void setStudentID(String studentID) {
        this.studentID = studentID;
    }

    public String getCourseID() {
        return courseID;
    }

    public void setCourseID(String courseID) {
        this.courseID = courseID;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public int getSemester() {
        return semester;
    }

    public void setSemester(int semester) {
        this.semester = semester;
    }

    public float getMark() {
        return mark;
    }

    public void setMark(float mark) {
        this.mark = mark;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }
}