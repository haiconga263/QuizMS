/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MS.Business;

import MS.DataAccess.Exam;
import MS.DataAccess.Question;
import MS.Helper.ExecuteQuery;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author hieptd
 */
public class ExamBUS {

    private final ExecuteQuery ex = new ExecuteQuery();

    public List<Exam> getList() throws Exception {
        List<Exam> lstEx = new ArrayList<>();
        Exam exam;
        ResultSet rs = ex.selectTable("Exam");
        while (rs.next()) {
            exam = new Exam(rs.getInt("id"), rs.getInt("point"), rs.getInt("time"), rs.getString("name"), rs.getString("status"), rs.getString("Discription"));
            lstEx.add(exam);
        }
        return lstEx;
    }

    public Exam getNameExamById(int id) throws Exception {
        Exam exam = null;
        String sql = "SELECT * \n"
                + "FROM exam  \n"
                + "WHERE id= '" + id + "'";
        ResultSet rs = ex.executeQuery(sql);
        while (rs.next()) {
            exam = new Exam(rs.getInt("id"), rs.getInt("point"), rs.getInt("time"), rs.getString("name"), rs.getString("status"), rs.getString("Discription"));           
        }
        return exam;
    }
    public List<Exam> GetListExamByStudent (String name) throws Exception {
        List<Exam> lstExam = new ArrayList<>();
        Exam exam;
        String sql = "SELECT e.* \n"
                +    "FROM exam e, student st \n"
                +    "WHERE st.id_exam = e.id and st.name = '" + name + "'";
        ResultSet rs = ex.executeQuery(sql);
        while (rs.next()) {
            exam = new Exam(rs.getInt("id"), rs.getInt("point"), rs.getInt("time"), rs.getString("name"), rs.getString("status"), rs.getString("Discription"));      
            lstExam.add(exam);
        }
        return lstExam;
    }
    public ResultSet GetExamDetail(int id_stu, int id_exam) throws Exception{     
        String sql = "select  q.* , s.content_ans \n" +
                     " from question q, exam e, answer s"
                +    " WHERE q.id_exam = e.id and e.id = '" + id_exam + "'"
                + "and s.id_student = '" + id_stu + "'"
                + " group by q.id";
        ResultSet rs = ex.executeQuery(sql);      
        return rs;
    }
}
