package vn.plusplus.database.models;

public class DepartmentEntity {
    private String deptID;
    private String name;
    private int noOfStudents;

    public DepartmentEntity() {
    }

    public DepartmentEntity(String deptID, String name, int noOfStudents) {
        this.deptID = deptID;
        this.name = name;
        this.noOfStudents = noOfStudents;
    }

    public String getDeptID() {
        return deptID;
    }

    public void setDeptID(String deptID) {
        this.deptID = deptID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getNoOfStudents() {
        return noOfStudents;
    }

    public void setNoOfStudents(int noOfStudents) {
        this.noOfStudents = noOfStudents;
    }
}