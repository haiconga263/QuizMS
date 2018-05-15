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
public class Exam {
    private int id, point,time;
    private String name, status, description;
    
    public Exam(int id, int point, int time, String name,String status, String description){
        this.id = id;
        this.point = point;
        this.time = time;
        this.name = name;
        this.status = status;
        this.description = description;
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
     * @return the time
     */
    public int getTime() {
        return time;
    }

    /**
     * @param time the time to set
     */
    public void setTime(int time) {
        this.time = time;
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

    /**
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }

    /**
     * @return the Description
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param Description the Description to set
     */
    public void setDescription(String description) {
        this.description = description;
    }
    
}
