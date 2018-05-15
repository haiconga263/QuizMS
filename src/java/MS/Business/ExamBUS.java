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
}
