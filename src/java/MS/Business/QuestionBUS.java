/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MS.Business;

import MS.DataAccess.Question;
import MS.Helper.DataProvider;
import MS.Helper.ExecuteQuery;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
/**
 *
 * @author hieptd
 */
public class QuestionBUS {

    private final ExecuteQuery ex = new ExecuteQuery();
    private final DataProvider da = new DataProvider();
    public List<Question> getQuestionByExamId(int id) throws Exception {
        List<Question> lstQuestion = new ArrayList<>();
        Question question;
        String sql = "SELECT q.*, a.content_ans \n"
                + "FROM question as q left join answer as a on q.id = a.id_question \n"
                + "WHERE q.id_exam = '" + id + "'";          
        ResultSet rs = ex.executeQuery(sql);
        while (rs.next()) {
            question = new Question(rs.getInt("id"), rs.getInt("id_exam"), rs.getInt("point"), rs.getString("content"), rs.getString("result"), rs.getString("content_ans"));
            lstQuestion.add(question);
        }
        return lstQuestion;
    }

    public List<Question> GetExamDetail(int id_stu, int id_exam) throws Exception {
        List<Question> lstQuestion = new ArrayList<>();
        Question question;
        String sql = "SELECT  q.* , s.content_ans \n"
                + " FROM question q, exam e, answer s"
                + " WHERE q.id_exam = e.id and e.id = '" + id_exam + "'"
                + " and s.id_student = '" + id_stu + "'"
                + " group by q.id";
        ResultSet rs = ex.executeQuery(sql);
        while (rs.next()) {
            question = new Question(rs.getInt("id"), rs.getInt("id_exam"), rs.getInt("point"), rs.getString("content"), rs.getString("result"), rs.getString("content_ans"));
            lstQuestion.add(question);
        }
        return lstQuestion;
    }

    public int updatePoint2(Map <Integer, Integer> map) throws Exception {
        Connection con  = da.getConnection();
        con.setAutoCommit(false);
        int rs = -1;
        int res[]; 
        Iterator<Entry<Integer, Integer>> it = map.entrySet().iterator();
       
        String sql = "update  question \n" 
                        + "set point = ?"
                        + "Where id = ?";
        PreparedStatement stmt = con.prepareStatement(sql);
        while (it.hasNext()) {
            Map.Entry<Integer,Integer> pairs = (Map.Entry<Integer,Integer>)it.next();
            stmt.setInt(1, pairs.getValue());
            stmt.setInt(2, pairs.getKey());
            stmt.addBatch(); // this will just collect the data values
            it.remove();
        }    
        res = stmt.executeBatch();
        //stmt.
        //con.commit();
        //try (PreparedStatement pstmt = con.prepareStatement(sql)) {
            //pstmt.setString(1, "1"); // set input parameter 1
            //pstmt.setString(2, "DOES THIS WORK"); // set input parameter 2
         //   rs = pstmt.executeUpdate(); // execute update statement
           // con.commit();
        //}
        //return rs;
        con.commit();
        return 0;
        
    }
}
