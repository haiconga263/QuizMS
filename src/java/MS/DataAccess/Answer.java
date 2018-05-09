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
    private int id, id_question;
    private String username, answer;
    
    public Answer(int id, int id_question, String username, String answer){
        this.id = id;
        this.id_question = id_question;
        this.username = username;
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
    public String getUsername(){
        return this.username;
    }
    public void setUsername(String username){
        this.username = username;
    }
    public String getAnswer(){
        return this.answer;
    }
    public void setAnswer(String answer){
        this.answer = answer;
    }
}
