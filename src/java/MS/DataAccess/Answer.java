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
public class Answer {
    /**
     * @return the id_student
     */
    public int getId_student() {
        return id_student;
    }

    /**
     * @param id_student the id_student to set
     */
    public void setId_student(int id_student) {
        this.id_student = id_student;
    }
    private int id, id_question, id_student;
    private String answer;
   
    public Answer(int id_question, int id_student, String answer){
  
        this.id_question = id_question;
        this.id_student = id_student;
        this.answer = answer;
    }
    public int getID(){
        return this.id;
    }
    public void setID(int id){
        this.id = id;
    }
    public int getId_question(){
        return id_question;
    }
    public void setId_question(int id){
        this.id_question = id;
    }
    public String getAnswer(){
        return this.answer;
    }
    public void setAnswer(String answer){
        this.answer = answer;
    }
}
