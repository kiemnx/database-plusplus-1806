package vn.plusplus.database.models;

public class CourseEntity {
    private String courseID;
    private String name;
    private int credit;

    public CourseEntity() {
    }

    public CourseEntity(String courseID, String name, int credit) {
        this.courseID = courseID;
        this.name = name;
        this.credit = credit;
    }

    public String getCourseID() {
        return courseID;
    }

    public void setCourseID(String courseID) {
        this.courseID = courseID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getCredit() {
        return credit;
    }

    public void setCredit(int credit) {
        this.credit = credit;
    }
}
