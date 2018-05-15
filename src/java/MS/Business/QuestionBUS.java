/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MS.Business;

import MS.DataAccess.Question;
import MS.Helper.ExecuteQuery;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author hieptd
 */
public class QuestionBUS {
    private final ExecuteQuery ex = new ExecuteQuery();
    public List<Question>getQuestionByExamId(int id) throws Exception{
        List<Question> lstQuestion = new ArrayList<>();
        Question question;
        String sql =   "SELECT q.id, q.id_exam,q.point,q.content,q.result \n" +
                        "FROM exam ex, question q \n" +
                        "WHERE q.id= '" + id + "'";
        ResultSet rs = ex.executeQuery(sql);
        while(rs.next()){
            question = new Question(rs.getInt("id"),rs.getInt("id_exam"),rs.getInt("point"),rs.getString("content"), rs.getString("result"));
            lstQuestion.add(question);
        }
        return lstQuestion;
    }
}
