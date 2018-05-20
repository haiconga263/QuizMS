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
public class Question {
    private int id, id_exam, point;
    private String content, result, content_ans;
    
    public Question(int id, int id_exam, int point, String content, String result, String content_ans){
        this.id = id;
        this.id_exam = id_exam;
        this.point = point;
        this.content = content;
        this.result = result;
        this.content_ans = content_ans;
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
     * @return the content
     */
    public String getContent() {
        return content;
    }

    /**
     * @param content the content to set
     */
    public void setContent(String content) {
        this.content = content;
    }

    /**
     * @return the result
     */
    public String getResult() {
        return result;
    }

    /**
     * @param result the result to set
     */
    public void setResult(String result) {
        this.result = result;
    }

    /**
     * @return the content_ans
     */
    public String getContent_ans() {
        return content_ans;
    }

    /**
     * @param content_ans the content_ans to set
     */
    public void setConten_ans(String content_ans) {
        this.content_ans = content_ans;
    }
}
