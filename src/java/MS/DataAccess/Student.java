/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MS.DataAccess;

/**
 *
 * @author hieptd
 */
public class Student {
    private int id, id_exam, point;
    private String name;
    
    public Student(int id, int id_exam, int point, String name){
        this.id = id;
        this.id_exam = id_exam;
        this.point = point;
        this.name = name;
    }

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the id_exam
     */
    public int getId_exam() {
        return id_exam;
    }

    /**
     * @param id_exam the id_exam to set
     */
    public void setId_exam(int id_exam) {
        this.id_exam = id_exam;
    }

    /**
     * @return the point
     */
    public int getPoint() {
        return point;
    }

    /**
     * @param point the point to set
     */
    public void setPoint(int point) {
        this.point = point;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }
}
